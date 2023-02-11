import SwiftUI

struct SDDatePickerPreview: View {
    @State var text: String = ""
    @State var date: Date = Date()
    @State var isShow: Bool = true

    var body: some View {
        ZStack {
            Color.black.opacity(0.4)
                .ignoresSafeArea()
            SDDatePicker(text: $text, date: $date, isShow: $isShow)
        }
    }
}

