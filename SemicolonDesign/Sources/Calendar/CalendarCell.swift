import SwiftUI

struct CalendarCell: View {
    let date: Date
    let specialDate: [Date]
    let count: Int
    let startingSpaces: Int
    let daysInMonth: Int
    let daysInPrevMonth: Int

    var body: some View {
        Text(checkMonthType().dayToString())
            .sdText(
                type: .body3,
                textColor: textColor(type: checkMonthType().monthType)
            )
            .frame(width: 36, height: 36)
            .background(backgroundColor(type: checkMonthType().monthType))
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(borderColor(
                        type: checkMonthType().monthType),
                            lineWidth: 2
                    )
            )
    }
    func textColor(type: MonthType) -> Color {
        if Int(date.toString("d")) == count - startingSpaces && Date().toString("yyyy MM") == date.toString("yyyy MM") {
            return .white
        } else if type == .current {
            return .black
        } else {
            return .GrayScale.gray500
        }
    }
    func backgroundColor(type: MonthType) -> Color {
        return Int(date.toString("d")) == count - startingSpaces && Date().toString("yyyy MM") == date.toString("yyyy MM") ? .Primary.purple400 : .white
    }
    func checkMonthType() -> Month {
        if count <= startingSpaces {
            let day = daysInPrevMonth + count - startingSpaces
            return Month(monthType: .previous, day: day)
        } else if count - startingSpaces > daysInMonth {
            let day = count - startingSpaces - daysInMonth
            return Month(monthType: .next, day: day)
        } else {
            let day = count - startingSpaces
            return Month(monthType: .current, day: day)
        }
    }
    func borderColor(type: MonthType) -> Color {
        return specialDate.filter {
            $0.toString("yyyy MM") == date.toString("yyyy MM")
        }
        .map { Int($0.toString("d")) }
        .contains { $0 == count - startingSpaces } ? .Primary.purple100 : .white
    }
}

struct CalendarCell_Previews: PreviewProvider {
    static var previews: some View {
        CalendarCell(date: Date(), specialDate: [], count: 1, startingSpaces: 1, daysInMonth: 1, daysInPrevMonth: 1)
    }
}
