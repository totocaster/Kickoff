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
}
