import Foundation

extension Date {
    func toString(_ format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        return dateFormatter.string(from: self)
    }
    // 달이 몇 일로 이루어져 있는지 알려주는 함수
    func getDaysCountInMonth() -> Int {
        return Calendar.current.range(of: .day, in: .month, for: self)?.count ?? 0
    }
    func getWeeksCountInMonth() -> Int {
        return Calendar.current.range(of: .weekOfMonth, in: .month, for: self)?.count ?? 0
    }
    // 오늘 몇 일인지 알려주는 함수
    func getDayOfMonth() -> Int {
        return Calendar.current.dateComponents([.day], from: self).day ?? 0
    }
    // 이번 달의 첫번째 날 가져오기
    func getFirstOfMonth() -> Date {
        let component = Calendar.current.dateComponents([.year, .month], from: self)
        return Calendar.current.date(from: component) ?? Date()
    }
    // 무슨 요일인지 알려주는 함수
    func getWeekDay() -> Int {
        return (Calendar.current.dateComponents([.weekday], from: self).weekday ?? 0) - 1
    }
    // 다음달로 값을 변환하는 함수
    mutating func setNextMonth() {
        self = Calendar.current.date(byAdding: .month, value: 1, to: self) ?? Date()
    }
    // 저번달로 값을 변환하는 함수
    mutating func setLastMonth() {
        self = Calendar.current.date(byAdding: .month, value: -1, to: self) ?? Date()
    }
    func lastMonth() -> Date {
        return Calendar.current.date(byAdding: .month, value: -1, to: self) ?? Date()
    }
}
