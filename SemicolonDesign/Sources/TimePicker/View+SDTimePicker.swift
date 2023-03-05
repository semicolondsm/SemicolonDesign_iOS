import SwiftUI

public extension View {
    func sdTimePicker(isPresented: Binding<Bool>, currentDate: Binding<String>, date: Binding<String>) -> some View {
        self.modifier(SDTimePickerModifier(isPresented: isPresented, currentDate: currentDate, date: date))
    }
}
