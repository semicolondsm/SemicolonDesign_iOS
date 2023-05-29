import SwiftUI

public extension View {
    func sdPeriodPicker(isPresented: Binding<Bool>, currentPeriod: Binding<Int?>, period: Binding<Int?>) -> some View {
        self.modifier(SDPeriodPickerModifier(isPresented: isPresented, currentPeriod: currentPeriod, period: period))
    }
}
