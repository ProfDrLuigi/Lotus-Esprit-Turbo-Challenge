import Foundation
import Combine
import Network

@MainActor final class LotusOnlineClient: ObservableObject {
    enum Phase { case idle, connecting, lobby, waiting, playing, failed }
    @Published private(set) var phase: Phase = .idle
    @Published private(set) var notice = L10n.text("Create a room or join a friend.")
    @Published private(set) var room = ""
    @Published private(set) var roomTitle = ""
    @Published private(set) var roomPrivate = true
    @Published private(set) var rooms = [LotusOnlineProtocol.Room]()
    @Published private(set) var slot: Int?
    @Published private(set) var latency: Int?
    @Published private(set) var buffering = false
    @Published private(set) var nickname = ""
    @Published private(set) var playerNames = ["",""]
    @Published private(set) var highScores = [LotusOnlineProtocol.HighScore]()
    @Published private(set) var scoreNotice = ""
    @Published private(set) var scoresUpdated: Date?
    var onScoreSync: (() -> Void)?
    private var pendingHello: [UInt8]?
    private var incomingScores: [LotusOnlineProtocol.HighScore]?
    private var scoreCount = 0
    private var acknowledgedScores = [Int:Int]()
    private var scoreRefresh: Timer?
    private(set) var configuration = LotusOnlineProtocol.Configuration(difficulty:0,gears:1,delay:8)
    private(set) var nextFrame: UInt32 = 0
    var isEngaged: Bool { phase == .connecting || phase == .waiting || phase == .playing }
    var isPlaying: Bool { phase == .playing }
    var onStart: (() throws -> Void)?
    var onEnd: (() -> Void)?
    var onChat: ((Int,String) -> Void)?
    private var lastChat: TimeInterval?
    private var connection: NWConnection?
    private var decoder = LotusOnlineProtocol.Decoder()
    private var frames = [UInt32:LotusOnlineProtocol.Frame]()
    private var receivedFrame: UInt32 = 0
    private var keepalive: Timer?
    private var lastReceive = ProcessInfo.processInfo.systemUptime
    private var pingAt: TimeInterval?
    private var pingID: UInt32 = 0
    private var pendingSends = 0
    private var restartPending = false
    private var waitingSince: TimeInterval?
    private(set) var browsing = false
    private var incomingRooms: [LotusOnlineProtocol.Room]?
    private var roomCount = 0

    func connect(host: String,port: UInt16,room: String,create: Bool,
                 configuration: LotusOnlineProtocol.Configuration,identity: [UInt8],
                 privateRoom: Bool = true,title: String = "Lotus race",nickname: String) {
        disconnect()
        let host = host.trimmingCharacters(in:.whitespacesAndNewlines)
        let title=title.trimmingCharacters(in:.whitespacesAndNewlines)
        guard !host.isEmpty,port>0,LotusOnlineProtocol.validRoom(room),identity.count==32,
              LotusOnlineProtocol.validNickname(nickname),!title.isEmpty,title.utf8.count<=64,!title.unicodeScalars.contains(where:{CharacterSet.controlCharacters.contains($0)}) else {
            phase = .failed;notice=L10n.text("Enter a server, a valid port and a six-character room code.");return
        }
        self.room=room;self.configuration=configuration
        self.nickname=nickname
        var hello:[UInt8]=[1,LotusOnlineProtocol.revision,create ? 0:1,configuration.difficulty,
                           configuration.gears,configuration.delay]
        hello += Array(room.utf8);hello += identity
        hello += [privateRoom ? 1:0,UInt8(title.utf8.count)];hello += Array(title.utf8)
        open(host:host,port:port,hello:hello,browsing:false)
    }
    func browse(host: String,port: UInt16,nickname: String) {
        disconnect()
        let host=host.trimmingCharacters(in:.whitespacesAndNewlines)
        guard !host.isEmpty,port>0,LotusOnlineProtocol.validNickname(nickname) else {
            phase = .failed;notice=L10n.text("Enter a server and a valid port.");return
        }
        rooms.removeAll()
        self.nickname=nickname
        open(host:host,port:port,hello:[LotusOnlineProtocol.Kind.browse.rawValue,LotusOnlineProtocol.revision],browsing:true)
    }
    func refreshLobby() {
        if phase == .lobby { send([LotusOnlineProtocol.Kind.browse.rawValue,LotusOnlineProtocol.revision]) }
    }
    func dismissLobby() {
        guard browsing else { return }
        close();phase = .idle;notice=L10n.text("Create a room or join a friend.")
    }
    private func open(host: String,port: UInt16,hello: [UInt8],browsing: Bool) {
        self.browsing=browsing;phase = .connecting;pendingHello=hello
        notice=L10n.text("Connecting to server…")
        let options = NWProtocolTCP.Options();options.noDelay=true
        options.connectionTimeout=10
        let connection = NWConnection(host:NWEndpoint.Host(host),port:NWEndpoint.Port(rawValue:port)!,
                                      using:NWParameters(tls:nil,tcp:options))
        self.connection=connection;lastReceive=ProcessInfo.processInfo.systemUptime
        connection.stateUpdateHandler = { [weak self,weak connection] state in
            MainActor.assumeIsolated {
                guard let self,let connection,self.connection === connection else { return }
                switch state {
                case .ready:
                    self.send([LotusOnlineProtocol.Kind.identify.rawValue,LotusOnlineProtocol.revision,UInt8(self.nickname.utf8.count)]+Array(self.nickname.utf8))
                    self.receive(connection)
                case .failed(let error): self.end(L10n.format("Connection failed: %@",error.localizedDescription))
                case .cancelled: self.end(L10n.text("Connection closed."))
                default: break
                }
            }
        }
        connection.start(queue:.main)
        keepalive = Timer.scheduledTimer(withTimeInterval:3,repeats:true) { [weak self] _ in
            MainActor.assumeIsolated { self?.heartbeat() }
        }
        if let keepalive { RunLoop.main.add(keepalive,forMode:.common) }
    }
    func disconnect() {
        let engaged=isEngaged
        close();phase = .idle;notice=L10n.text("Create a room or join a friend.")
        slot=nil;latency=nil;buffering=false
        if engaged { onEnd?() }
    }
    func requestRestart() { if slot==0 && isPlaying { restartPending=true } }
    func synchronizeScores(_ entries: [LotusHighScores.Entry]) {
        guard connection != nil,phase == .lobby || phase == .waiting || phase == .playing else { return }
        for entry in entries where entry.nickname==nickname && (0...2).contains(entry.difficulty) &&
            (1...LotusOnlineProtocol.scoreMaximum[entry.difficulty]).contains(entry.score) &&
            acknowledgedScores[entry.difficulty,default:0]<entry.score {
            send([LotusOnlineProtocol.Kind.scoreSubmit.rawValue,UInt8(entry.difficulty)]+LotusOnlineProtocol.uint32(UInt32(entry.score)))
        }
        send([LotusOnlineProtocol.Kind.scoresGet.rawValue])
    }
    @discardableResult func sendChat(_ text: String) -> Bool {
        let time=ProcessInfo.processInfo.systemUptime
        guard isPlaying,LotusOnlineProtocol.validChat(text),lastChat.map({time-$0>=0.5}) ?? true else { return false }
        lastChat=time
        send([LotusOnlineProtocol.Kind.chat.rawValue]+Array(text.utf8))
        return true
    }
    func takeFrame(local: LotusOnlineProtocol.Input) -> LotusOnlineProtocol.Frame? {
        guard isPlaying else { return nil }
        guard let frame=frames.removeValue(forKey:nextFrame) else {
            let now=ProcessInfo.processInfo.systemUptime
            if waitingSince==nil { waitingSince=now }
            // TCP and the display timer need not wake in phase. Publishing a
            // one-tick wait rebuilds the SwiftUI toolbar up to 100 times/sec.
            if !buffering,now-waitingSince!>=0.1 { buffering=true }
            return nil
        }
        waitingSince=nil
        if buffering { buffering=false }
        var local=local
        if restartPending { local.flags|=2;restartPending=false }
        submit(frame:nextFrame+UInt32(configuration.delay),input:local)
        nextFrame+=1
        return frame
    }
    func report(_ digest: [UInt8]) {
        guard isPlaying,nextFrame>0,nextFrame%100==0,digest.count==32 else { return }
        send([LotusOnlineProtocol.Kind.hash.rawValue]+LotusOnlineProtocol.uint32(nextFrame)+digest)
    }
    func simulationFailed() { end(L10n.text("The online simulation could not be started.")) }
    private func submit(frame: UInt32,input: LotusOnlineProtocol.Input) {
        send([LotusOnlineProtocol.Kind.input.rawValue]+LotusOnlineProtocol.uint32(frame)+[input.buttons,input.flags])
    }
    private func send(_ bytes: [UInt8]) {
        guard let connection else { return }
        guard pendingSends<128 else { end(L10n.text("The connection is too slow. Please reconnect."));return }
        pendingSends+=1
        connection.send(content:LotusOnlineProtocol.record(bytes),completion:.contentProcessed { [weak self,weak connection] error in
            MainActor.assumeIsolated {
                guard let self,let connection,self.connection === connection else { return }
                self.pendingSends-=1
                if let error { self.end(L10n.format("Connection failed: %@",error.localizedDescription)) }
            }
        })
    }
    private func receive(_ connection: NWConnection) {
        connection.receive(minimumIncompleteLength:1,maximumLength:4096) { [weak self,weak connection] data,_,complete,error in
            MainActor.assumeIsolated {
                guard let self,let connection,self.connection === connection else { return }
                if let data,!data.isEmpty {
                    self.lastReceive=ProcessInfo.processInfo.systemUptime
                    do {
                        for packet in try self.decoder.append(data) {
                            guard self.connection === connection else { return }
                            try self.packet(packet)
                        }
                    } catch { self.end(Self.errorMessage(6));return }
                }
                guard self.connection === connection else { return }
                if complete || error != nil { self.end(L10n.text("Connection closed."));return }
                self.receive(connection)
            }
        }
    }
    private func packet(_ p: [UInt8]) throws {
        guard let kind=p.first.flatMap(LotusOnlineProtocol.Kind.init(rawValue:)) else { throw LotusOnlineProtocol.Failure.packet }
        switch kind {
        case .identified:
            guard phase == .connecting,p.count==1,let hello=pendingHello else { throw LotusOnlineProtocol.Failure.packet }
            pendingHello=nil;send(hello)
            let timer=Timer(timeInterval:15,repeats:true) { [weak self] _ in
                MainActor.assumeIsolated { self?.onScoreSync?() }
            }
            scoreRefresh=timer;RunLoop.main.add(timer,forMode:.common)
        case .welcome:
            guard phase == .connecting,!browsing,p.count>=14,p[1]<2,p[2]<3,p[3]<2,(4...16).contains(p[4]),
                  p[11]<2,(1...64).contains(p[12]),p.count==13+Int(p[12]),
                  let title=String(bytes:p[13...],encoding:.utf8),
                  String(bytes:p[5...10],encoding:.ascii)==room else { throw LotusOnlineProtocol.Failure.packet }
            roomTitle=title;roomPrivate=p[11] != 0
            slot=Int(p[1]);configuration = .init(difficulty:p[2],gears:p[3],delay:p[4]);phase = .waiting
            notice=L10n.text("Waiting for the second player…")
            onScoreSync?()
        case .members:
            guard phase == .waiting || isPlaying,p.count>=5,(2...48).contains(p[1]) else { throw LotusOnlineProtocol.Failure.packet }
            let split=2+Int(p[1])
            guard p.count>split,p.count==split+1+Int(p[split]),
                  let first=String(bytes:p[2..<split],encoding:.utf8),LotusOnlineProtocol.validNickname(first),
                  let second=String(bytes:p[(split+1)...],encoding:.utf8),
                  second.isEmpty || LotusOnlineProtocol.validNickname(second) else { throw LotusOnlineProtocol.Failure.packet }
            playerNames=[first,second]
        case .start:
            guard phase == .waiting,p.count==1 else { throw LotusOnlineProtocol.Failure.packet }
            nextFrame=0;receivedFrame=0;frames.removeAll();phase = .playing
            do { try onStart?() } catch { simulationFailed();return }
            guard isPlaying else { return }
            notice=L10n.text("Connected · both players see the split screen.")
            for n in 0..<UInt32(configuration.delay) { submit(frame:n,input:.init()) }
        case .frame:
            guard isPlaying,p.count==9,frames.count<64 else { throw LotusOnlineProtocol.Failure.packet }
            let number=LotusOnlineProtocol.read32(p,1)
            guard number==receivedFrame,number<UInt32.max-32,p[5]<32,p[7]<32,p[6]<4,p[8]<2 else { throw LotusOnlineProtocol.Failure.packet }
            frames[number] = .init(number:number,players:[.init(buttons:p[5],flags:p[6]),.init(buttons:p[7],flags:p[8])])
            receivedFrame+=1
        case .error:
            guard p.count==2 else { throw LotusOnlineProtocol.Failure.packet }
            end(Self.errorMessage(p[1]))
        case .chatMessage:
            guard isPlaying,p.count>=3,p[1]<2,let text=String(bytes:p[2...],encoding:.utf8),
                  LotusOnlineProtocol.validChat(text) else { throw LotusOnlineProtocol.Failure.packet }
            onChat?(Int(p[1]),text)
        case .pong:
            guard p.count==5 else { throw LotusOnlineProtocol.Failure.packet }
            if LotusOnlineProtocol.read32(p,1)==pingID,let pingAt {
                latency=Int((ProcessInfo.processInfo.systemUptime-pingAt)*1000);self.pingAt=nil
            }
        case .listBegin:
            guard browsing,(phase == .connecting || phase == .lobby),p.count==3,incomingRooms==nil else { throw LotusOnlineProtocol.Failure.packet }
            roomCount=Int(p[1])*256+Int(p[2])
            guard roomCount<=64 else { throw LotusOnlineProtocol.Failure.packet }
            incomingRooms=[]
        case .roomInfo:
            guard browsing,incomingRooms != nil,incomingRooms!.count<roomCount,p.count>=18,
                  p[5]<2,(1...2).contains(p[6]),p[7]<2,p[8]<3,p[9]<2,
                  (1...64).contains(p[16]),p.count==17+Int(p[16]),
                  let title=String(bytes:p[17...],encoding:.utf8) else { throw LotusOnlineProtocol.Failure.packet }
            let id=LotusOnlineProtocol.read32(p,1),privateRoom=p[5] != 0
            let code=String(bytes:p[10...15],encoding:.ascii)
            guard id>0,!incomingRooms!.contains(where:{$0.id==id}),
                  privateRoom ? p[10...15].allSatisfy({$0==0}):code.map(LotusOnlineProtocol.validRoom)==true else { throw LotusOnlineProtocol.Failure.packet }
            incomingRooms!.append(.init(id:id,title:title,isPrivate:privateRoom,players:Int(p[6]),
                                         started:p[7] != 0,difficulty:Int(p[8]),gears:Int(p[9]),code:privateRoom ? nil:code))
        case .listEnd:
            guard browsing,p.count==1,let incomingRooms,incomingRooms.count==roomCount else { throw LotusOnlineProtocol.Failure.packet }
            rooms=incomingRooms.sorted { if $0.canJoin != $1.canJoin { return $0.canJoin };return $0.id<$1.id }
            self.incomingRooms=nil;phase = .lobby;notice=L10n.text("Lobby updates automatically.")
            if scoresUpdated==nil { onScoreSync?() }
        case .scoresBegin:
            guard p.count==3,incomingScores==nil else { throw LotusOnlineProtocol.Failure.packet }
            scoreCount=Int(p[1])*256+Int(p[2])
            guard scoreCount<=60 else { throw LotusOnlineProtocol.Failure.packet }
            incomingScores=[]
        case .scoreRow:
            guard incomingScores != nil,incomingScores!.count<scoreCount,p.count>=9,p[1]<3,
                  (2...48).contains(p[6]),p.count==7+Int(p[6]),
                  let name=String(bytes:p[7...],encoding:.utf8),LotusOnlineProtocol.validNickname(name) else { throw LotusOnlineProtocol.Failure.packet }
            let difficulty=Int(p[1]),score=Int(LotusOnlineProtocol.read32(p,2))
            guard (1...LotusOnlineProtocol.scoreMaximum[difficulty]).contains(score),
                  !incomingScores!.contains(where:{$0.nickname==name && $0.difficulty==difficulty}) else { throw LotusOnlineProtocol.Failure.packet }
            incomingScores!.append(.init(nickname:name,difficulty:difficulty,score:score))
        case .scoresEnd:
            guard p.count==1,let scores=incomingScores,scores.count==scoreCount else { throw LotusOnlineProtocol.Failure.packet }
            highScores=scores;incomingScores=nil;scoresUpdated=Date()
        case .scoreAck:
            guard p.count==7,p[1]<3,p[6]<2 else { throw LotusOnlineProtocol.Failure.packet }
            if p[6]==1 {
                scoreNotice=""
                let d=Int(p[1]);acknowledgedScores[d]=max(acknowledgedScores[d,default:0],Int(LotusOnlineProtocol.read32(p,2)))
            } else { scoreNotice="Der Server konnte den Highscore nicht speichern. Er wird erneut übertragen." }
        default: throw LotusOnlineProtocol.Failure.packet
        }
    }
    private func heartbeat() {
        guard connection != nil else { return }
        let now=ProcessInfo.processInfo.systemUptime
        if now-lastReceive>12 { end(L10n.text("The server stopped responding."));return }
        guard phase != .connecting else { return }
        pingID &+= 1;pingAt=now
        send([LotusOnlineProtocol.Kind.ping.rawValue]+LotusOnlineProtocol.uint32(pingID))
        if phase == .lobby { refreshLobby() }
    }
    private func close() {
        keepalive?.invalidate();keepalive=nil
        scoreRefresh?.invalidate();scoreRefresh=nil
        let connection=self.connection;self.connection=nil;connection?.cancel()
        decoder = .init();frames.removeAll();pendingSends=0;restartPending=false;pingAt=nil;waitingSince=nil
        incomingRooms=nil;browsing=false;lastChat=nil
        pendingHello=nil;incomingScores=nil;acknowledgedScores.removeAll()
        highScores=[];scoresUpdated=nil;playerNames=["",""];scoreNotice=""
    }
    private func end(_ reason: String) {
        guard connection != nil else { return }
        let engaged=isEngaged
        close();phase = .failed;notice=reason;buffering=false
        if engaged { onEnd?() }
    }
    static func errorMessage(_ code: UInt8) -> String {
        switch code {
        case 1: return L10n.text("Client and server versions do not match.")
        case 2: return L10n.text("This room already exists. Choose another code.")
        case 3: return L10n.text("Room not found. Create it first or check the code.")
        case 4: return L10n.text("This room already has two players.")
        case 5: return L10n.text("Both players need the same game version and original game data.")
        case 7: return L10n.text("The other player left the room.")
        case 8: return L10n.text("The connection timed out.")
        case 9: return L10n.text("The game states diverged. Please create a new room.")
        case 10: return L10n.text("The server is full. Please try again later.")
        case 11: return L10n.text("This nickname is not allowed. Please choose another name.")
        default: return L10n.text("Invalid data received. The connection was closed.")
        }
    }
}
