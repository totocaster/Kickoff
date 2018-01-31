import UIKit

public extension UIScreen {
    /// Temprary solution detecting iPhone X, maily for screen's corner radii.
    public var isCroppedByRoundedCorners: Bool {
        return (UIDevice.current.userInterfaceIdiom == .phone && bounds.height == 812.0)
            || (UIDevice.current.userInterfaceIdiom == .phone && bounds.width == 812.0)
    }
}
