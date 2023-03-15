import SwiftUI

struct SDPeriodPickerModifier: ViewModifier {

    var isPresented: Binding<Bool>

    var period: Binding<Int>

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented.wrappedValue {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                SDPeriodPicker(period: self.period, isShow: self.isPresented)
            }
        }
    }
}
