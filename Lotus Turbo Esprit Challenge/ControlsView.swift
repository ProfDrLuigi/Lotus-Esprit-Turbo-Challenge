import SwiftUI

struct ControlsView: View {
    @ObservedObject var session: GameSession
    @ObservedObject var hub: ControllerHub
    @ObservedObject var keyboard: KeyboardInput

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("LOTUS ESPRIT TURBO CHALLENGE").font(.system(size: 18, weight: .black, design: .monospaced))
            Picker(L10n.text("Player"), selection: $session.controlsPlayer) {
                ForEach(PlayerSlot.allCases) { player in Text(player.title).tag(player) }
            }.pickerStyle(SegmentedPickerStyle())
            Text(L10n.text("Settings are saved separately for each player.")).font(.footnote).foregroundColor(.secondary)
            Picker(L10n.text("Input"), selection: $session.controlsPane) {
                Label(L10n.text("Keyboard"), systemImage: "keyboard").tag(0)
                Label(L10n.text("Controller"), systemImage: "gamecontroller").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    if session.controlsPane == 0 {
                        KeyboardSettings(session: session, keyboard: keyboard, player: session.controlsPlayer)
                    } else {
                        ControllerSettings(session: session, hub: hub, input: hub.input(session.controlsPlayer),
                                           rumble: hub.input(session.controlsPlayer).rumble)
                    }
                    Divider()
                    Text(L10n.text("Fire accelerates with alternate controls. With manual gears, hold Fire and press Up or Down to shift."))
                        .font(.footnote).foregroundColor(.secondary)
                    Text(L10n.text("Choose difficulty, one or two players, control scheme and transmission in the original game menu. Single-player mode uses the original split-screen layout."))
                        .font(.footnote).foregroundColor(.secondary)
                    Text(L10n.text("Player names in the original menu use the normal keyboard."))
                        .font(.footnote).foregroundColor(.secondary)
                }.frame(maxWidth: .infinity, alignment: .leading)
            }
            HStack {
                Button(L10n.text("Restart game")) { session.showControls = false; session.restart() }
                Spacer()
                Button(L10n.text("Play")) { session.showControls = false }.keyboardShortcut(.defaultAction)
            }
        }.padding(24).frame(width: 780, height: 740)
            .background(KeyboardCapture(session: session).frame(width: 0, height: 0))
            .onChange(of: session.controlsPlayer) { _ in session.cancelLearning(); session.releaseInput() }
            .onChange(of: session.controlsPane) { _ in session.cancelLearning(); session.releaseInput() }
            .onDisappear { session.cancelLearning() }
    }
}

private struct KeyboardSettings: View {
    @ObservedObject var session: GameSession
    @ObservedObject var keyboard: KeyboardInput
    let player: PlayerSlot
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label(player.title + " · " + L10n.text("Keyboard"), systemImage: "keyboard").font(.headline)
                Spacer()
                Button(L10n.text("Default keys")) { keyboard.reset(player); session.releaseInput() }
            }
            Text(L10n.text("Click a key, then press and release its replacement. Each action has two key slots. Keys already in use are swapped, including between players."))
                .font(.footnote).foregroundColor(.secondary)
            if let selection = keyboard.learning {
                HStack {
                    Text(L10n.format("%@: %@ — press and release a key.", selection.player.title, selection.action.title))
                    Spacer()
                    Button(L10n.text("Cancel")) { keyboard.cancelLearning() }
                }.font(.callout).foregroundColor(.accentColor).padding(10).background(Color.accentColor.opacity(0.10)).cornerRadius(8)
            }
            HStack {
                Text(L10n.text("Action")).frame(maxWidth: .infinity, alignment: .leading)
                Text(L10n.text("Primary key")).frame(width: 170, alignment: .leading)
                Text(L10n.text("Alternate key")).frame(width: 170, alignment: .leading)
            }.font(.caption).foregroundColor(.secondary)
            ForEach(DriveAction.allCases) { action in
                HStack(spacing: 10) {
                    Text(action.title).frame(maxWidth: .infinity, alignment: .leading)
                    keySlot(action, .primary)
                    keySlot(action, .alternate)
                }.font(.system(size: 12)).padding(.vertical, 2)
            }
            if let notice = keyboard.notice { Text(notice).font(.footnote).foregroundColor(.secondary) }
            Text(L10n.text("Unassigned slots are disabled. Command shortcuts remain available to macOS."))
                .font(.footnote).foregroundColor(.secondary)
        }
    }
    private func keySlot(_ action: DriveAction, _ slot: KeyboardInput.Slot) -> some View {
        let selection = KeyboardInput.Selection(player: player, action: action, slot: slot)
        let code = keyboard.key(selection)
        return HStack(spacing: 5) {
            Button(KeyboardInput.keyName(code)) { session.learnKey(selection) }
                .frame(maxWidth: .infinity)
                .accessibilityLabel(L10n.format("%@: assign %@ for %@", player.title, slot.title, action.title))
                .accessibilityValue(KeyboardInput.keyName(code))
                .foregroundColor(keyboard.learning == selection ? .accentColor : .primary)
            Button { keyboard.assign(selection, code: nil); session.releaseInput() } label: {
                Image(systemName: "xmark.circle")
            }.buttonStyle(PlainButtonStyle()).disabled(code < 0)
                .accessibilityLabel(L10n.format("%@: clear %@ for %@", player.title, slot.title, action.title))
        }.frame(width: 170)
    }
}

private struct ControllerSettings: View {
    @ObservedObject var session: GameSession
    @ObservedObject var hub: ControllerHub
    @ObservedObject var input: ControllerInput
    @ObservedObject var rumble: ControllerRumble
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            GroupBox {
                VStack(alignment: .leading, spacing: 12) {
                    Label(input.player.title + " · " + L10n.text("Controller"), systemImage: "gamecontroller").font(.headline)
                    Picker(L10n.text("Assigned controller"), selection: Binding(
                        get: { hub.selections[input.player] ?? "automatic" },
                        set: { session.cancelLearning(); hub.select($0, for: input.player) })) {
                        Text(L10n.text("Automatic")).tag("automatic")
                        Text(L10n.text("None — keyboard only")).tag("none")
                        ForEach(hub.devices) { device in Text(device.title).tag(device.choice) }
                        if let choice = hub.selections[input.player], choice.hasPrefix("controller."),
                           !hub.devices.contains(where: { $0.choice == choice }) {
                            Text(L10n.text("Selected controller disconnected")).tag(choice)
                        }
                    }
                    Text(input.name ?? L10n.text("No controller connected")).font(.footnote).foregroundColor(.secondary)
                    Text(L10n.text("Controllers are numbered in connection order. Assigning a controller already used by the other player swaps their controllers."))
                        .font(.footnote).foregroundColor(.secondary)
                }.padding(8).frame(maxWidth: .infinity, alignment: .leading)
            }
            stickSettings
            rumbleSettings
            HStack {
                Text(L10n.text("Button bindings")).font(.headline)
                Spacer()
                Button(L10n.text("Default buttons")) { input.reset(); session.releaseInput() }
            }
            Text(L10n.text("Choose a control or use Record, then press and release a button or move and release a stick. Existing button assignments are swapped within this player."))
                .font(.footnote).foregroundColor(.secondary)
            if let action = input.learning {
                HStack {
                    Text(L10n.format("%@: %@ — press and release a control.", input.player.title, action.title))
                    Spacer()
                    Button(L10n.text("Cancel")) { input.cancelLearning() }
                }.font(.callout).foregroundColor(.accentColor)
            }
            ForEach(DriveAction.allCases) { action in
                HStack {
                    Text(action.title).frame(maxWidth: .infinity, alignment: .leading)
                    Picker(action.title, selection: Binding(
                        get: { input.bindings[action.rawValue] ?? "" },
                        set: { input.assign(action, $0); session.releaseInput() })) {
                        ForEach(ControllerInput.options, id: \.0) { option in Text(input.label(option.0)).tag(option.0) }
                    }.labelsHidden().frame(width: 220)
                    Button(L10n.text("Record")) { session.learnController(input.player, action) }
                        .disabled(input.controller == nil)
                        .accessibilityLabel(L10n.format("%@: record controller input for %@", input.player.title, action.title))
                }.font(.system(size: 12))
            }
        }
    }
    private var stickSettings: some View {
        GroupBox {
            VStack(alignment: .leading, spacing: 12) {
                Text(L10n.text("Stick")).font(.headline)
                Toggle(L10n.text("Use left stick for steering and menu navigation"), isOn: $input.useStick)
                HStack {
                    Text(L10n.text("Dead zone"))
                    Slider(value: $input.deadZone, in: 0...0.8, step: 0.01)
                        .accessibilityLabel(input.player.title + " · " + L10n.text("Dead zone"))
                        .accessibilityValue(L10n.format("%ld percent", Int((input.deadZone*100).rounded())))
                    Text(L10n.format("percentage.value", Int((input.deadZone*100).rounded()))).font(.system(size: 12, design: .monospaced)).frame(width: 44, alignment: .trailing)
                }
                Text(L10n.text("Larger values ignore more stick movement near the center.")).font(.footnote).foregroundColor(.secondary)
            }.padding(8).frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    private var rumbleSettings: some View {
        GroupBox {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Toggle(L10n.text("Rumble"), isOn: $rumble.enabled)
                    Spacer()
                    Button(L10n.text("Test")) { rumble.play(.test) }
                        .disabled(!rumble.available || !rumble.enabled || rumble.strength == 0)
                }
                HStack {
                    Text(L10n.text("Strength"))
                    Slider(value: $rumble.strength, in: 0...1, step: 0.01).disabled(!rumble.enabled)
                        .accessibilityLabel(input.player.title + " · " + L10n.text("Rumble strength"))
                        .accessibilityValue(L10n.format("%ld percent", Int((rumble.strength*100).rounded())))
                    Text(L10n.format("percentage.value", Int((rumble.strength*100).rounded()))).font(.system(size: 12, design: .monospaced)).frame(width: 44, alignment: .trailing)
                }
                Text(L10n.text("Feedback for collisions and gear shifts. Each player's settings apply only to their assigned controller."))
                    .font(.footnote).foregroundColor(.secondary)
                if !rumble.available {
                    Text(rumble.connected ? L10n.text("This controller does not support rumble.") : L10n.text("Connect a controller with rumble to test it."))
                        .font(.footnote).foregroundColor(.secondary)
                }
                if let error = rumble.error { Text(error).font(.footnote).foregroundColor(.orange) }
            }.padding(8).frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
