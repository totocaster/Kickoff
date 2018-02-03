import Foundation

public extension Bundle {

    /// Returns string for `CFBundleIdentifier` key.
    public var identifier: String {
        return self.infoDictionary?["CFBundleIdentifier"] as? String ?? "Unknown"
    }

    /// Returns string for `CFBundleShortVersionString` key.
    public var version: String {
        return self.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    }

    /// Returns string for `CFBundleVersion` key.
    public var build: String {
        return self.infoDictionary?["CFBundleVersion"] as? String ?? "0"
    }

    /// Returns formatted string of app version followerd by build number in prentices.
    /// For example `1.3.7 (1273)`.
    public var formattedVersion: String {
        return "\(version) (\(build))"
    }

    /// Returns string for `CFBundleDisplayName` key.
    /// Usually app name that appears on the home screen.
    public var displayName: String {
        return self.infoDictionary?["CFBundleDisplayName"] as? String ?? "Unknown"
    }

    // MARK: - Enviromental Checks

    public static var isDebug: Bool {
        #if DEBUG
            return true
        #else
            return false
        #endif
    }

    public static var isSimulator: Bool {
        #if (arch(i386) || arch(x86_64)) // some strong assumptions here.
            return true
        #else
            return false
        #endif
    }

    /// http://stackoverflow.com/questions/12431994/detect-testflight
    // TODO: Review https://stackoverflow.com/questions/9906504/check-if-ios-app-is-live-in-app-store
    public static var isTestFlight: Bool {
        return Bundle.main.appStoreReceiptURL?.path.contains("sandboxReceipt") == true
    }
}
