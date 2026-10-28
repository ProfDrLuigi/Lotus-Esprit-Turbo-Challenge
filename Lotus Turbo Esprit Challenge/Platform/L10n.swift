import Foundation

/// Uses the macOS app language, including per-app language preferences.
enum L10n {
    nonisolated static func text(_ key: String) -> String {
        NSLocalizedString(key, bundle: .main, comment: "")
    }

    nonisolated static func format(_ key: String, _ arguments: CVarArg...) -> String {
        String(format: text(key), locale: Locale.current, arguments: arguments)
    }
}
