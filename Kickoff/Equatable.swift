import Foundation

public extension Equatable {
    public func isAny(of candidates: Self...) -> Bool {
        return candidates.contains(self)
    }
}
