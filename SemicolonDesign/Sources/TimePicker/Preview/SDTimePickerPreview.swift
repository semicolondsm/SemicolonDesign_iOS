import SwiftUI

struct SDTimePickerPreview: View {
    @State var currentTime: String = ""
    @State var time: String = ""
    @State var isPresented: Bool = false

    var body: some View {
        HStack {
            SDTextField(text: $currentTime)
            SDTextField(text: $time)
        }
        .sdTimePicker(isPresented: $isPresented, currentDate: $currentTime, date: $time)
        .onTapGesture {
            self.isPresented = true
        }
    }
}
