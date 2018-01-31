import Foundation

public extension URL {
    public func valueForUrlComponent(_ componentName: String) -> String? {
        return NSURLComponents(string: self.absoluteString)?.queryItems?.first(where: { $0.name == componentName })?.value
    }
}
