import SwiftUI

struct SDPeriodPickerPreview: View {
    @State var text: String = ""
    @State var period: Int?
    @State var isPresented: Bool = false
    var body: some View {
        SDTextField(title: "", text: $text, isDisabled: true)
            .onTapGesture {
                self.isPresented = true
            }
            .onChange(of: period) { newValue in
                text = "\(newValue ?? 1)교시"
            }
            .sdPeriodPicker(isPresented: $isPresented, period: $period)
    }
}
