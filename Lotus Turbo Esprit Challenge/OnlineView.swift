import SwiftUI

struct OnlineView: View {
    @ObservedObject var session: GameSession
    @ObservedObject var online: LotusOnlineClient
    @State private var joinCode = ""
    @State private var title = L10n.text("Lotus race")
    @State private var privateRoom = false
    @State private var selectedPrivateTitle: String?
    @State private var difficulty = 0
    @State private var gears = 1
    @State private var wallDifficulty = 0
    private var inLobby: Bool { online.phase == .lobby }
    private var showsWall: Bool { inLobby || online.phase == .waiting || online.isPlaying }
    private var minimumSize: NSSize {
        NSSize(width:showsWall ? 820:600,height:inLobby ? 660:showsWall ? 520:420)
    }
    private var validTitle: Bool {
        let value=title.trimmingCharacters(in:.whitespacesAndNewlines)
        return !value.isEmpty && value.utf8.count<=64 &&
            !value.unicodeScalars.contains{CharacterSet.controlCharacters.contains($0)}
    }
    var body: some View {
        GeometryReader { geometry in
        HStack(alignment:.top,spacing:24) {
        VStack(alignment:.leading,spacing:14) {
            HStack {
                Label(L10n.text("Online lobby"),systemImage:"network").font(.title2)
                Spacer()
                Button(L10n.text("Close")) { session.showOnline=false }
            }
            if online.phase == .idle || online.phase == .failed {
                VStack(alignment:.leading,spacing:8) {
                    Text("Dein Nickname").font(.headline)
                    // Connect explicitly; leaving this field must not start a connection.
                    TextField("Nickname",text:$session.onlineNickname)
                        .accessibilityIdentifier("online-nickname")
                    Text("2–20 Zeichen. Deine Highscores werden unter diesem Namen geführt.")
                        .font(.footnote).foregroundColor(.secondary)
                }
            } else {
                Text("Nickname: \(online.nickname)").font(.headline).accessibilityIdentifier("online-current-nickname")
            }
            if online.phase == .waiting || online.isPlaying {
                membership
            } else {
                Button(inLobby ? L10n.text("Disconnect"):L10n.text("Connect")) {
                    if inLobby { online.dismissLobby() } else { browse() }
                }.disabled(!validNickname || online.phase == .connecting)
                    .accessibilityIdentifier("online-connect")
                if inLobby || online.phase == .connecting { lobby }
                if inLobby {
                GroupBox(label:Text(L10n.text("Create room"))) {
                    VStack(alignment:.leading,spacing:10) {
                        TextField(L10n.text("Room name"),text:$title).accessibilityIdentifier("online-room-name")
                        HStack {
                            Picker(L10n.text("Difficulty"),selection:$difficulty) {
                                Text("Easy · 7").tag(0);Text("Medium · 10").tag(1);Text("Hard · 15").tag(2)
                            }
                            Picker(L10n.text("Gears"),selection:$gears) {
                                Text(L10n.text("Manual")).tag(0);Text(L10n.text("Automatic")).tag(1)
                            }
                        }
                        HStack {
                            Toggle(L10n.text("Private room · join code required"),isOn:$privateRoom)
                                .accessibilityIdentifier("online-private")
                            Spacer()
                            Button(L10n.text("Create room")) {
                                connect(code:LotusOnlineProtocol.randomRoom(),create:true)
                            }.disabled(!inLobby || !validTitle).accessibilityIdentifier("online-create")
                        }
                    }.padding(6)
                }
                VStack(alignment:.leading,spacing:5) {
                    if let selectedPrivateTitle {
                        Text(L10n.format("Enter the code for “%@”.",selectedPrivateTitle)).font(.footnote)
                    }
                    HStack {
                        TextField(L10n.text("Private room code"),text:$joinCode).accessibilityIdentifier("online-room")
                        Button(L10n.text("Join with code")) { connect(code:joinCode.uppercased(),create:false) }
                            .disabled(!inLobby || !LotusOnlineProtocol.validRoom(joinCode.uppercased()))
                            .accessibilityIdentifier("online-join")
                    }
                }
                }
            }
            Text(online.notice).font(.footnote).foregroundColor(online.phase == .failed ? .red:.secondary)
                .fixedSize(horizontal:false,vertical:true).accessibilityIdentifier("online-status")
            Divider()
            Text(L10n.text("On both Macs use the Player 1 keyboard or controller profile. Pause and controls pause the shared race. Background windows release their controls and keep the race running."))
                .font(.footnote).foregroundColor(.secondary)
        }.frame(minWidth:470,idealWidth:550,maxWidth:.infinity,maxHeight:.infinity,alignment:.topLeading)
        if showsWall {
            Divider()
            wallOfFame
                .frame(width:min(360,max(250,geometry.size.width*0.32)))
                .frame(maxHeight:.infinity,alignment:.topLeading)
        }
        }
        }.padding(24)
            .frame(minWidth:minimumSize.width,idealWidth:showsWall ? 960:640,maxWidth:.infinity,
                   minHeight:minimumSize.height,
                   idealHeight:inLobby ? 700:showsWall ? 580:460,maxHeight:.infinity,
                   alignment:.topLeading)
            .background(OnlineSheetWindowBounds(minimumSize:minimumSize))
    }
    private var validNickname: Bool {
        LotusOnlineProtocol.validNickname(session.onlineNickname.trimmingCharacters(in:.whitespacesAndNewlines))
    }
    private var wallOfFame: some View {
        VStack(alignment:.leading,spacing:14) {
            Label("ONLINE WALL OF FAME",systemImage:"trophy.fill").font(.headline).foregroundColor(.yellow)
            Picker("Schwierigkeit",selection:$wallDifficulty) {
                Text("Easy").tag(0);Text("Medium").tag(1);Text("Hard").tag(2)
            }.pickerStyle(SegmentedPickerStyle()).labelsHidden()
            HStack { Text("FAHRER");Spacer();Text("PUNKTE") }.font(.caption).foregroundColor(.secondary)
            ScrollView {
                VStack(spacing:10) {
                    let scores=online.highScores.filter{$0.difficulty==wallDifficulty}
                    if scores.isEmpty {
                        Text(online.scoresUpdated==nil ? "Rangliste wird geladen …":"Noch keine Highscores.")
                            .foregroundColor(.secondary).padding(.vertical,30)
                    }
                    ForEach(Array(scores.enumerated()),id:\.element.id) { index,score in
                        HStack {
                            Text("\(index+1).").frame(width:24,alignment:.trailing).foregroundColor(.secondary)
                            Text(score.nickname).lineLimit(1)
                            Spacer()
                            Text("\(score.score)").font(.system(.body,design:.monospaced))
                        }.font(.system(size:13,weight:score.nickname==online.nickname ? .bold:.regular))
                            .foregroundColor(score.nickname==online.nickname ? .green:.primary)
                            .accessibilityIdentifier("online-highscore-\(index)")
                    }
                }
            }.frame(minHeight:180,maxHeight:.infinity)
            Button("Aktualisieren") { online.onScoreSync?() }.accessibilityIdentifier("online-scores-refresh")
            Text("Abgleich mit deiner lokalen Highscore-Datei alle 15 Sekunden.")
                .font(.footnote).foregroundColor(.secondary)
            if let error=session.highScores.error { Text(error).font(.footnote).foregroundColor(.red) }
            if !online.scoreNotice.isEmpty { Text(online.scoreNotice).font(.footnote).foregroundColor(.orange) }
        }.accessibilityIdentifier("online-wall-of-fame")
    }
    private var lobby: some View {
        VStack(alignment:.leading,spacing:8) {
            HStack {
                Text(L10n.text("Rooms")).font(.headline)
                Spacer()
                Button(L10n.text("Refresh")) { online.refreshLobby() }.disabled(!inLobby)
                    .accessibilityIdentifier("online-refresh")
            }
            ScrollView {
                LazyVStack(alignment:.leading,spacing:8) {
                    if online.rooms.isEmpty {
                        Text(inLobby ? L10n.text("No rooms yet. Create the first one."):L10n.text("Connect to see available rooms."))
                            .foregroundColor(.secondary).padding(20).frame(maxWidth:.infinity)
                    }
                    ForEach(online.rooms) { room in
                        VStack(alignment:.leading,spacing:5) {
                            HStack {
                                Label(room.title,systemImage:room.isPrivate ? "lock.fill":"globe")
                                    .lineLimit(1).help(room.title)
                                Spacer()
                                Text(room.isPrivate ? L10n.text("Private"):L10n.text("Open"))
                                    .foregroundColor(room.isPrivate ? .secondary:.green)
                                Text(verbatim:"\(room.players)/2").font(.system(.body,design:.monospaced))
                                Button(room.started ? L10n.text("Racing"):room.isPrivate ? L10n.text("Enter code"):L10n.text("Join")) {
                                    if room.isPrivate { selectedPrivateTitle=room.title;joinCode="" }
                                    else if let code=room.code { connect(code:code,create:false) }
                                }.disabled(!inLobby || !room.canJoin)
                                    .accessibilityIdentifier("online-room-\(room.id)")
                            }
                            Text([["Easy · 7","Medium · 10","Hard · 15"][room.difficulty],
                                 room.gears==0 ? L10n.text("Manual"):L10n.text("Automatic"),
                                 room.canJoin ? L10n.text("Waiting for player"):L10n.text("Full")].joined(separator:" · "))
                                .font(.caption).foregroundColor(.secondary)
                        }.padding(10).background(Color.secondary.opacity(0.08)).cornerRadius(6)
                    }
                }
            }.frame(minHeight:140,maxHeight:.infinity)
        }
    }
    private var membership: some View {
        VStack(alignment:.leading,spacing:14) {
            Text(online.roomTitle).font(.title2)
            HStack {
                Text(L10n.format("Room %@",online.room)).font(.title.monospacedDigit()).textSelectionIfAvailable()
                Spacer()
                Label(online.roomPrivate ? L10n.text("Private"):L10n.text("Open"),
                      systemImage:online.roomPrivate ? "lock.fill":"globe")
            }
            if let slot=online.slot {
                Text(slot==0 ? L10n.text("You drive Player 1 · top screen."):L10n.text("You drive Player 2 · bottom screen."))
            }
            if let latency=online.latency { Text(L10n.format("Server latency: %ld ms",latency)).font(.footnote).foregroundColor(.secondary) }
            if online.isPlaying {
                HStack {
                    Button(session.paused ? L10n.text("Resume"):L10n.text("Pause")) { session.paused.toggle();session.showOnline=false }
                    if online.slot==0 { Button(L10n.text("New race")) { online.requestRestart();session.showOnline=false } }
                }
            }
            Button(L10n.text("Leave online game")) { session.leaveOnline() }.accessibilityIdentifier("online-leave")
        }
    }
    private func browse() { session.enterOnlineLobby(host:LotusOnlineProtocol.serverHost,port:LotusOnlineProtocol.port) }
    private func connect(code: String,create: Bool) {
        session.connectOnline(host:LotusOnlineProtocol.serverHost,port:LotusOnlineProtocol.port,
                              room:code,create:create,difficulty:UInt8(difficulty),gears:UInt8(gears),
                              privateRoom:privateRoom,title:create ? title:L10n.text("Lotus race"))
    }
}

/// SwiftUI retains a user-resized sheet's previous window bounds when its
/// content changes. Keep AppKit's minimum in sync when the lobby adds columns.
private struct OnlineSheetWindowBounds: NSViewRepresentable {
    let minimumSize: NSSize
    func makeNSView(context: Context) -> SizingView { SizingView() }
    func updateNSView(_ view: SizingView, context: Context) { view.updateMinimum(minimumSize) }

    final class SizingView: NSView {
        private var minimum = NSSize.zero
        private var revision = 0
        func updateMinimum(_ value: NSSize) {
            guard value != minimum else { return }
            minimum = value; scheduleUpdate()
        }
        override func viewDidMoveToWindow() {
            super.viewDidMoveToWindow(); scheduleUpdate()
        }
        private func scheduleUpdate() {
            revision += 1
            let expected = revision
            // Resize after SwiftUI's view update, never during its layout pass.
            DispatchQueue.main.async { [weak self] in
                guard let self, self.revision == expected, let window = self.window,
                      window.sheetParent != nil else { return }
                window.styleMask.insert(.resizable)
                window.contentMinSize = self.minimum
                let size = window.contentRect(forFrameRect:window.frame).size
                if size.width < self.minimum.width || size.height < self.minimum.height {
                    window.setContentSize(NSSize(width:max(size.width,self.minimum.width),
                                                 height:max(size.height,self.minimum.height)))
                }
            }
        }
    }
}

private extension View {
    @ViewBuilder func textSelectionIfAvailable() -> some View {
        if #available(macOS 12.0,*) { textSelection(.enabled) } else { self }
    }
}
