import Foundation

public extension Int {

    // MARK: Random numbers

    public init(randomIn range: Range<Int>) {
        self.init(randomFrom: range.lowerBound, to: range.upperBound - 1)
    }

    public init(randomIn range: ClosedRange<Int>){
        self.init(randomFrom: range.lowerBound, to: range.upperBound)
    }

    public init(randomFrom lower: Int = 0, to upper: Int = 100){
        self.init(lower + Int(arc4random_uniform(UInt32(upper - lower + 1))))
    }

    // MARK: Lazy odd/even checks

    public var isEven: Bool {
        return (self % 2 == 0)
    }

    public var isOdd: Bool { return !isEven }

}
