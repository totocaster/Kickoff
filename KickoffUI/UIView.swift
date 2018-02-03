import UIKit

public extension UIView {
    public var usesAutoLayout: Bool {
        get { return !translatesAutoresizingMaskIntoConstraints }
        set { translatesAutoresizingMaskIntoConstraints = !newValue }
    }
}
