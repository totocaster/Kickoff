import UIKit

public extension UIBarButtonItem {
    public convenience init(fixedSpaceWithWidth width: CGFloat) {
        self.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        self.width = width
    }
}
