import SwiftUI

struct ContentView: View {
    @StateObject private var session = GameSession()
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                GameSurface(session: session)
                if session.needsOriginalData {
                    Color.black
                    OriginalDataSetupView(session: session)
                } else if let failure = session.failure {
                    VStack(spacing: 16) {
                        Text("LOTUS").font(.system(size: 28, weight: .black, design: .monospaced))
                        Text(failure).font(.system(.body, design: .monospaced)).multilineTextAlignment(.center)
                        Button(L10n.text("Restart")) { session.restart() }
                    }.padding(32).frame(maxWidth: 580).background(Color.black.opacity(0.95)).foregroundColor(.white)
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            GameToolbar(session: session, hub: session.controllers,online:session.online)
                .disabled(session.needsOriginalData)
        }.frame(minWidth: 980, minHeight: 480).background(Color.black)
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Lotus.ImportOriginalData"))) { _ in
                if session.view?.window?.isKeyWindow == true { session.requestOriginalDataImport() }
            }
            .sheet(isPresented: $session.showControls, onDismiss: {
                session.releaseInput(); session.view?.window?.makeFirstResponder(session.view)
            }) { ControlsView(session: session, hub: session.controllers, keyboard: session.keyboard) }
            .sheet(isPresented:$session.showOnline,onDismiss:{
                session.online.dismissLobby()
                session.releaseInput();session.view?.window?.makeFirstResponder(session.view)
            }) {
                if #available(macOS 15.0, *) {
                    OnlineView(session:session,online:session.online).presentationSizing(.fitted)
                } else {
                    OnlineView(session:session,online:session.online)
                }
            }
    }
}

private struct GameToolbar: View {
    @ObservedObject var session: GameSession
    @ObservedObject var hub: ControllerHub
    @ObservedObject var online: LotusOnlineClient

    var body: some View {
        HStack(spacing: 18) {
            Text("LOTUS")
                .font(.system(size: 11, weight: .bold, design: .monospaced))
                .foregroundColor(Color(red: 0.86, green: 0.68, blue: 0.38)).fixedSize()
            HStack(spacing: 6) {
                displayModeButton(50)
                displayModeButton(60)
            }.fixedSize()
            Button {
                session.hdAudioEnabled.toggle()
                session.view?.window?.makeFirstResponder(session.view)
            } label: {
                Text("HD Audio")
                    .font(.system(size: 11, weight: session.hdAudioEnabled ? .bold : .regular, design: .monospaced))
                    .foregroundColor(session.hdAudioEnabled ? .green : Color(white: 0.6))
                    .padding(.horizontal, 6).padding(.vertical, 4)
                    .background(session.hdAudioEnabled ? Color.green.opacity(0.13) : Color.clear).cornerRadius(4)
            }
            .fixedSize()
            .help(L10n.text("Switch between HD music and original Amiga music. Driving sounds stay enabled."))
            .accessibilityIdentifier("hd-audio-toggle")
            .accessibilityAddTraits(session.hdAudioEnabled ? .isSelected : [])
            HStack(spacing: 2) {
                musicButton("backward.end.fill",label:"Previous track",identifier:"music-previous") { session.skipMusic(-1) }
                musicButton(session.musicPaused || session.musicTrack == nil ? "play.fill":"pause.fill",
                            label:session.musicPaused || session.musicTrack == nil ? "Play music":"Pause music",
                            identifier:"music-playback") { session.toggleMusicPlayback() }
                musicButton("forward.end.fill",label:"Next track",identifier:"music-next") { session.skipMusic(1) }
                Text(session.musicTrack.map(String.init) ?? "–")
                    .frame(width:12).accessibilityLabel(L10n.text("Music"))
                    .accessibilityIdentifier("music-track")
            }.fixedSize().disabled(!session.canControlMusic)
                .opacity(session.canControlMusic ? 1:0.4)
            Button {
                session.hdGraphicsEnabled.toggle()
                session.view?.window?.makeFirstResponder(session.view)
            } label: {
                Text("HD Graphics")
                    .font(.system(size:11,weight:session.hdGraphicsEnabled ? .bold:.regular,design:.monospaced))
                    .foregroundColor(session.hdGraphicsEnabled ? .green:Color(white:0.6))
                    .padding(.horizontal,6).padding(.vertical,4)
                    .background(session.hdGraphicsEnabled ? Color.green.opacity(0.13):Color.clear).cornerRadius(4)
            }.fixedSize().disabled(!session.hdGraphicsAvailable)
                .help(L10n.text("Switch between HD graphics and original Amiga graphics."))
                .accessibilityIdentifier("hd-graphics-toggle")
                .accessibilityAddTraits(session.hdGraphicsEnabled ? .isSelected:[])
            Spacer(minLength: 8)
            Button {
                session.showOnline=true
            } label: {
                Label(online.buffering ? L10n.text("Waiting for network…"):
                    online.isPlaying ? L10n.format("Online · P%ld",(online.slot ?? 0)+1):L10n.text("Online"),systemImage:"network")
                    .foregroundColor(online.buffering ? .orange:online.isEngaged ? .green:Color(white:0.8))
            }.accessibilityIdentifier("online-play")
                .help(L10n.text("Create or join an online split-screen race."))
            Button {
                session.controlsPane = 1; session.showControls = true
            } label: {
                Image(systemName: hub.devices.isEmpty ? "gamecontroller" : "gamecontroller.fill")
                    .foregroundColor(hub.devices.isEmpty ? .gray : .green)
            }
            .help(hub.devices.isEmpty ? L10n.text("Connect a controller · Show bindings") : hub.devices.map(\.title).joined(separator: ", "))
            .accessibilityLabel(L10n.text("Controller bindings"))
            .accessibilityValue(hub.devices.isEmpty ? L10n.text("No controller connected") : hub.devices.map(\.title).joined(separator: ", "))
            Button(session.paused ? L10n.text("Resume") : L10n.text("Pause")) { session.paused.toggle() }
            Button(session.muted ? L10n.text("Unmute") : L10n.text("Mute")) { session.muted.toggle() }
            Button(session.isFullScreen ? L10n.text("Window") : L10n.text("Fullscreen")) { session.toggleFullScreen() }
                .keyboardShortcut("f", modifiers: [.control, .command])
                .help(session.isFullScreen ? L10n.text("Return to window") : L10n.text("Enter full screen"))
                .accessibilityIdentifier("window-mode-toggle")
            Button(L10n.text("Controls")) { session.showControls.toggle() }
        }
        .font(.system(size: 11, design: .monospaced)).buttonStyle(PlainButtonStyle())
        .foregroundColor(Color(white: 0.8)).padding(.horizontal, 18).frame(height: 40).background(Color(white: 0.055))
    }

    private func musicButton(_ symbol: String,label: String,identifier: String,action: @escaping () -> Void) -> some View {
        Button(action:action) {
            Image(systemName:symbol).frame(width:24,height:26).contentShape(Rectangle())
        }
        .help(L10n.text(label)).accessibilityLabel(L10n.text(label))
        .accessibilityIdentifier(identifier)
    }

    private func displayModeButton(_ hz: Int) -> some View {
        let active = session.displayRate == hz
        return Button {
            session.displayRate = hz
            session.view?.window?.makeFirstResponder(session.view)
        } label: {
            Text(verbatim: "\(hz) Hz")
                .font(.system(size: 11, weight: active ? .bold : .regular, design: .monospaced))
                .foregroundColor(active ? .green : Color(white: 0.6))
                .padding(.horizontal, 6).padding(.vertical, 4)
                .background(active ? Color.green.opacity(0.13) : Color.clear).cornerRadius(4)
        }
        .help(L10n.text("Display refresh rate. The original game and audio run at 50 Hz."))
        .accessibilityIdentifier("display-mode-\(hz)")
        .accessibilityAddTraits(active ? .isSelected : [])
    }
}
