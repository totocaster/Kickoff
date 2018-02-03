import Foundation

public extension NSData {
    var hexString: NSString {
        var bytes = [UInt8](repeating: 0, count: length)
        getBytes(&bytes, length: length)
        
        let hexString = NSMutableString()
        for byte in bytes {
            hexString.appendFormat("%02x ", UInt(byte))
        }
        
        return NSString(string: hexString)
    }
}

public extension Data {
    var hexString: String {
        return (self as NSData).hexString as String
    }
}
