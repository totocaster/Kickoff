import Foundation

public extension String {
    public var isValidEmail: Bool {
        let pattern = "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@" +
            "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\." +
            "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

        let regex = try? NSRegularExpression(pattern: pattern, options: [])
        let range = NSRange(location: 0, length: self.count)
        return regex?.firstMatch(in: self, options: [], range: range) != nil
    }

    public var isValidUrl: Bool {
        return URL(string: self) != nil
    }

    public var nsString: NSString {
        return self as NSString
    }
}

/// NSString extensions
public extension String {

    public var lastPathComponent: String {
        return nsString.lastPathComponent
    }

    public var pathExtension: String {
        return nsString.pathExtension
    }

    public var deletingLastPathComponent: String {
        return nsString.deletingLastPathComponent
    }

    public var deletingPathExtension: String {
        return nsString.deletingPathExtension
    }

    public var pathComponents: [String] {
        return nsString.pathComponents
    }

    public func appendingPathComponent(_ str: String) -> String {
        return nsString.appendingPathComponent(str)
    }

    public func appendingPathExtension(_ str: String) -> String? {
        return nsString.appendingPathExtension(str)
    }

}
