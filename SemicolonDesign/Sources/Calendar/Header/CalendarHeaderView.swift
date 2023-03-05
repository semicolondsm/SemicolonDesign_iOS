import SwiftUI

struct CalendarHeaderView: View {
    @Binding var day: Date
    var body: some View {
        HStack(spacing: 22) {
            Button {
                day.lastMonth()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .tint(.GrayScale.gray500)
                    .frame(width: 7, height: 13)
                    .padding(5)
            }
            Text(day.toString("yyyy년 MM월"))
                .sdText(
                    type: .body4,
                    textColor: .GrayScale.gray900
                )
            Button {
                day.nextMonth()
            } label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .tint(.GrayScale.gray500)
                    .frame(width: 7, height: 13)
                    .padding(5)
            }
        }
    }
}

struct CalendarHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarHeaderView(day: .constant(Date()))
    }
}
