import SwiftUI

public extension View {
    func sdPeriodPicker(isPresented: Binding<Bool>, period: Binding<Int?>) -> some View {
        self.modifier(SDPeriodPickerModifier(isPresented: isPresented, period: period))
    }
}
