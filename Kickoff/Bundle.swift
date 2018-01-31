import Foundation

public extension Bundle {
    public var identifier: String {
        return self.infoDictionary?["CFBundleIdentifier"] as? String ?? "Unknown"
    }

    public var shortVersionString: String {
        return self.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    }

    public var buildNumberString: String {
        return self.infoDictionary?["CFBundleVersion"] as? String ?? "0"
    }

    public var formattedVersion: String {
        return "\(shortVersionString) (\(buildNumberString))"
    }

    public var displayName: String {
        return self.infoDictionary?["CFBundleDisplayName"] as? String ?? "Project Anvil"
    }
}
