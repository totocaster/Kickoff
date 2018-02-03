import UIKit

public extension UIView {

    /// Oposite value to `translatesAutoresizingMaskIntoConstraints`.
    public var usesAutoLayout: Bool {
        get { return !translatesAutoresizingMaskIntoConstraints }
        set { translatesAutoresizingMaskIntoConstraints = !newValue }
    }
}
