//
//  Lotus_Turbo_Esprit_ChallengenApp.swift
//  Lotus Turbo Esprit Challengen
//
//  Created by Prof. Dr. Luigi on 22.10.26.
//

import SwiftUI

@main
struct LotusTurboEspritChallengeApp: App {
    init() {
        if CommandLine.arguments.count==3,CommandLine.arguments[1]=="--lotus-derive" {
            NSApplication.shared.setActivationPolicy(.prohibited)
            do {
                try LotusResourceStore.worker(game:URL(fileURLWithPath:CommandLine.arguments[2]),bundle:Bundle.main.bundleURL)
                exit(0)
            } catch {
                FileHandle.standardError.write(Data("Local resource preparation failed: \(error)\n".utf8));exit(1)
            }
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        .commands {
            CommandGroup(after: .newItem) {
                Button(L10n.text("Import another ADF…")) {
                    NotificationCenter.default.post(name: Notification.Name("Lotus.ImportOriginalData"),object: nil)
                }
            }
        }
    }
}
