import Foundation

/// Real championship results only; the original developer/example scores are
/// never claimed as a player's result. This store is separate from lockstep RAM.
@MainActor final class LotusHighScores {
    struct Entry: Codable, Equatable {
        var nickname: String
        let difficulty: Int
        let score: Int
    }
    private struct File: Codable {
        var version = 1
        var entries: [Entry]
    }
    static var defaultURL: URL {
        FileManager.default.urls(for:.applicationSupportDirectory,in:.userDomainMask)[0]
            .appendingPathComponent(Bundle.main.bundleIdentifier ?? "sascha.com.lotus-turbo-challenge",isDirectory:true)
            .appendingPathComponent("highscores-v1.json")
    }
    let url: URL?
    private(set) var entries = [Entry]()
    private(set) var error: String?
    init(url: URL?) { self.url=url;read() }

    @discardableResult func read() -> Bool {
        guard let url,FileManager.default.fileExists(atPath:url.path) else { return true }
        do {
            let size=try url.resourceValues(forKeys:[.fileSizeKey]).fileSize ?? 0
            guard size<=1_048_576 else { throw CocoaError(.fileReadCorruptFile) }
            let file=try JSONDecoder().decode(File.self,from:Data(contentsOf:url))
            guard file.version==1,file.entries.count<=1000,file.entries.allSatisfy({ entry in
                (entry.nickname.isEmpty || LotusOnlineProtocol.validNickname(entry.nickname)) &&
                    (0...2).contains(entry.difficulty) && (1...LotusOnlineProtocol.scoreMaximum[entry.difficulty]).contains(entry.score)
            }) else { throw CocoaError(.fileReadCorruptFile) }
            entries=[]
            for entry in file.entries { merge(entry) }
            error=nil;return true
        } catch { self.error="Highscore-Datei konnte nicht gelesen werden.";return false }
    }
    func record(difficulty: Int,score: Int,nickname: String) {
        guard (0...2).contains(difficulty),(1...LotusOnlineProtocol.scoreMaximum[difficulty]).contains(score),
              nickname.isEmpty || LotusOnlineProtocol.validNickname(nickname),read() else { return }
        let old=entries
        merge(.init(nickname:nickname,difficulty:difficulty,score:score))
        if old != entries { save() }
    }
    func claimUnassigned(_ nickname: String) {
        guard LotusOnlineProtocol.validNickname(nickname),read() else { return }
        let old=entries
        entries=[]
        for var entry in old {
            if entry.nickname.isEmpty { entry.nickname=nickname }
            merge(entry)
        }
        if entries != old { save() }
    }
    func best(for nickname: String) -> [Entry] {
        guard read() else { return [] }
        return entries.filter{$0.nickname==nickname}.sorted{$0.difficulty<$1.difficulty}
    }
    private func merge(_ entry: Entry) {
        if let i=entries.firstIndex(where:{$0.nickname==entry.nickname && $0.difficulty==entry.difficulty}) {
            if entries[i].score<entry.score { entries[i]=entry }
        } else if entries.count<1000 { entries.append(entry) }
    }
    private func save() {
        guard let url else { return }
        do {
            try FileManager.default.createDirectory(at:url.deletingLastPathComponent(),withIntermediateDirectories:true)
            let encoder=JSONEncoder();encoder.outputFormatting=[.prettyPrinted,.sortedKeys]
            try encoder.encode(File(entries:entries)).write(to:url,options:.atomic)
            error=nil
        } catch { self.error="Highscore-Datei konnte nicht gespeichert werden." }
    }
}
