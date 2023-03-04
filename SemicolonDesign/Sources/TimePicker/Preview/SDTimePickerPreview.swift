import SwiftUI

struct SDTimePickerPreview: View {
    @State var text: String = ""
    @State var isPresented: Bool = false

    var body: some View {
        VStack {
            SDTextField(text: $text, isDisabled: true)
        }
        .sdTimePicker(isPresented: $isPresented, date: $text)
        .onTapGesture {
            self.isPresented = true
        }
    }
}
