import Foundation

public extension NSError {


    /// Conveniance initializer for quiqly creating erros in given domain with friendly error messaegs.
    /// Error message is assigned to error's `NSLocalizedDescriptionKey`.
    ///
    /// - Parameters:
    ///   - localizedDescription: Human friently error message.
    ///   - domain: Optional domain where error happened. By default matches your bundle identifier.
    public convenience init(localizedDescription: String, in domain: String = Bundle.main.identifier) {
        self.init(
            domain: domain,
            code: 100,
            userInfo: [NSLocalizedDescriptionKey : localizedDescription])
    }
}
