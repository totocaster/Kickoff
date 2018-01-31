import UIKit

public extension UIAlertAction {
    public static var ok: UIAlertAction {
        return UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .default, handler: nil)
    }

    public static var cancel: UIAlertAction {
        return UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: nil)
    }
}

