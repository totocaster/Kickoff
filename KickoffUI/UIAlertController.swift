import UIKit

extension UIAlertController {
    convenience init(error: NSError) {
        self.init(title: error.localizedDescription, message: error.localizedRecoverySuggestion, preferredStyle: .alert)
        addAction(UIAlertAction.ok)
    }

    convenience init(error: Error) {
        self.init(title: error.localizedDescription, message: nil, preferredStyle: .alert)
        addAction(UIAlertAction.ok)
    }
}
