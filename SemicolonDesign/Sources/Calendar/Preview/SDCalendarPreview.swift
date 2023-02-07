import SwiftUI

struct SDCalendarPreview: View {
    @State var day = Date()
    let specialDate = [
        "2023 02 08".toDate("yyyy MM dd"),
        "2023 02 09".toDate("yyyy MM dd"),
        "2023 02 10".toDate("yyyy MM dd"),
        "2023 02 11".toDate("yyyy MM dd")
    ]

    var body: some View {
        SDCalendar(day: $day, specialDate: specialDate)
    }
}
