import Foundation

public extension NSError {
    public convenience init(localizedDescription: String) {
        self.init(
            domain: Bundle.main.identifier,
            code: 100,
            userInfo: [NSLocalizedDescriptionKey : localizedDescription])
    }
}
