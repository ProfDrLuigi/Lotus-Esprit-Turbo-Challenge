import SwiftUI

struct OriginalDataSetupView: View {
    @ObservedObject var session: GameSession
    @State private var ownsGame = false

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("LOTUS").font(.system(size: 32, weight: .black, design: .monospaced))
                .foregroundColor(Color(red: 0.86, green: 0.68, blue: 0.38))
            Text(L10n.text("Import original game data")).font(.title2).bold()
            Text(L10n.text("To play this port, you must own the original Amiga game Lotus Esprit Turbo Challenge (Lotus 1). The original game files are not included."))
            Text(L10n.text("Select an ADF image of your disk. Its game files will be verified and installed locally. The ADF itself stays unchanged and is not needed again after a successful import."))
            Text(L10n.text("If you own the original disk but cannot create an ADF yourself, you can search Google for a lawfully offered disk image."))
                .foregroundColor(Color(white: 0.72))
            Toggle(L10n.text("I own the original Amiga game."), isOn: $ownsGame)
                .accessibilityIdentifier("adf-ownership")
                .disabled(session.importingOriginalData)
            if let notice = session.originalDataNotice {
                Text(notice).foregroundColor(.orange).fixedSize(horizontal: false, vertical: true)
                    .accessibilityIdentifier("adf-notice")
            }
            HStack(spacing: 16) {
                if session.importingOriginalData {
                    ProgressView().scaleEffect(0.7).frame(width: 20)
                    Text(L10n.text("Reading and verifying game data…"))
                    Spacer()
                    Button(L10n.text("Cancel")) { session.cancelOriginalImport() }
                        .accessibilityIdentifier("adf-cancel")
                } else {
                    Button(L10n.text("Select ADF…")) { session.chooseOriginalADF(ownershipConfirmed: ownsGame) }
                        .disabled(!ownsGame).accessibilityIdentifier("adf-select")
                    Button(L10n.text("Check installed data")) { session.retryInstalledOriginalData() }
                        .accessibilityIdentifier("adf-recheck")
                }
            }.frame(height: 32)
            Text("~/Library/Application Support/Lotus1")
                .font(.system(.caption, design: .monospaced)).foregroundColor(.gray)
        }.font(.system(size: 14)).lineSpacing(3)
            .padding(36).frame(maxWidth: 720)
            .background(Color(white: 0.06)).cornerRadius(12).padding(24)
            .foregroundColor(.white).accessibilityIdentifier("adf-setup")
    }
}
