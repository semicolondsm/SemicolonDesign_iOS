import Foundation

struct Month {
    var monthType: MonthType
    var day: Int
    func dayToString() -> String {
        return "\(day)"
    }
}
