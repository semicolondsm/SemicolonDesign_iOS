import SwiftUI

struct SDCalendarPreview: View {
    @State var day = Date()
    let specialDate = [
        "2023 03 02".toDate("yyyy MM dd"),
        "2023 03 03".toDate("yyyy MM dd"),
        "2023 05 04".toDate("yyyy MM dd"),
        "2023 05 05".toDate("yyyy MM dd")
    ]

    var body: some View {
        SDCalendar(day: $day, specialDate: specialDate)
    }
}
