import SwiftUI

public extension View {
    func sdTimePicker(isPresented: Binding<Bool>, date: Binding<String>) -> some View {
        self.modifier(SDTimePickerModifier(isPresented: isPresented, date: date))
    }
}
