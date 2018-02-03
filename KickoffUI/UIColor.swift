import UIKit

public extension UIColor {
    public convenience init(hexa value: UInt32) {
        let a = CGFloat((value & 0xFF000000) >> 24) / 255.0
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0xFF00) >> 8) / 255.0
        let b = CGFloat((value & 0xFF)) / 255.0

        self.init(red: r, green: g, blue: b, alpha: a)
    }

    public convenience init(hex value: UInt32) {
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0xFF00) >> 8) / 255.0
        let b = CGFloat((value & 0xFF)) / 255.0

        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }

    public convenience init(fromGradientTransitionFrom fromColor: UIColor, to toColor: UIColor, position: Double) {
        let color1 = fromColor.cgColor.components!
        let color2 = toColor.cgColor.components!

        let percent: CGFloat = CGFloat(position)

        let resultRed = color1[0] + percent * (color2[0] - color1[0])
        let resultGreen = color1[1] + percent * (color2[1] - color1[1])
        let resultBlue = color1[2] + percent * (color2[2] - color1[2])
        self.init(red: resultRed, green: resultGreen, blue: resultBlue, alpha: 1.0)
    }


    public convenience init(contrastingTextColorFor backgroundColor: UIColor) {

        // Extract background color components
        let r = backgroundColor.cgColor.components![0]
        let g = backgroundColor.cgColor.components![1]
        let b = backgroundColor.cgColor.components![2]

        // Counting the perceptive luminance - human eye favors green color...
        let luma = 1 - (0.299 * r + 0.587 * g + 0.114 * b) / 255.0

        if luma < 0.5 {
            self.init(white: 0.0, alpha: 0.0)
        } else {
            self.init(white: 1.0, alpha: 0.0)
        }
    }

    /// Hexadecimal string representation of the color.
    /// Returned string does not include `#` or `0x` prefix.
    public var hexString: String {
        guard let components = self.cgColor.components else { return "000000" }
        let r = components[0]
        let g = components[1]
        let b = components[2]
        return String(format: "%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255))
    }

}
