import Foundation

public extension Optional where Wrapped == String {
    public var isNullOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}


public extension Optional where Wrapped: Collection {
    public var isNullOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}
