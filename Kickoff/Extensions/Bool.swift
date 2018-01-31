import Foundation

public extension Bool {

    /// Flips boolean value.
    /// - Important: This fucntion is mutating.
    public mutating func toggle() {
        self = !self
    }

}
