import SwiftUI

struct SDDatePickerPreview: View {
    @State var text: String = ""
    @State var isShow: Bool = false

    var body: some View {
        SDTextField(text: $text)
            .disabled(true)
            .onTapGesture {
                self.isShow = true
            }
            .sdDatePicker(isPresented: $isShow, date: $text)
    }
}

