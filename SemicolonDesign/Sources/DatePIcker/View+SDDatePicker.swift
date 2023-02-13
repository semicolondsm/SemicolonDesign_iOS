import SwiftUI

public extension View {
    func sdDatePicker(isPresented: Binding<Bool>, date: Binding<String>) -> some View {
        self.modifier(SDDatePickerModifier(isPresented: isPresented, date: date))
    }
}
