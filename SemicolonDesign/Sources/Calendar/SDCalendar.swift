import SwiftUI

public struct SDCalendar: View {
    @Binding var day: Date
    let specialDate: [Date]

    public init(day: Binding<Date>, specialDate: [Date]) {
        self._day = day
        self.specialDate = specialDate
    }

    public var body: some View {
        let daysInMonth = day.getDaysCountInMonth()
        let firstDayOfMonth = day.getFirstOfMonth()
        let startingSpaces = firstDayOfMonth.getWeekDay()
        let prevMonth = day.lastMonth()
        let daysInPrevMonth = prevMonth.getDaysCountInMonth()
        let weeksCountInMonth = day.getWeeksCountInMonth()

        VStack(spacing: 8) {
            CalendarHeaderView(day: $day)
            ForEach(0..<weeksCountInMonth, id: \.self) { row in
                HStack(spacing: 8) {
                    ForEach(1..<8) { column in
                        let count = (column + (row * 7))
                        CalendarCell(
                            date: day,
                            specialDate: specialDate,
                            count: count,
                            startingSpaces: startingSpaces,
                            daysInMonth: daysInMonth,
                            daysInPrevMonth: daysInPrevMonth
                        )
                    }
                }
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

struct SDCalendar_Previews: PreviewProvider {
    static var previews: some View {
        SDCalendarPreview()
    }
}

