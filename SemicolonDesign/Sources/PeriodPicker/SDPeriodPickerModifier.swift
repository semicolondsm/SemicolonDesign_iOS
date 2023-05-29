import SwiftUI

struct SDPeriodPickerModifier: ViewModifier {

    var isPresented: Binding<Bool>

    var currentPeriod: Binding<Int?>
    var period: Binding<Int?>

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented.wrappedValue {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                SDPeriodPicker(period: self.period, currentPeriod: self.currentPeriod, isShow: self.isPresented)
            }
        }
        .onChange(of: isPresented.wrappedValue) { newValue in
            if !newValue {
                period.wrappedValue = nil
            }
        }
    }
}
