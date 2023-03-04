import SwiftUI

struct SDTimePickerModifier: ViewModifier {

    var isPresented: Binding<Bool>

    var date: Binding<String>

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented.wrappedValue {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                SDTimePicker(text: date, isPresented: isPresented)
            }
        }
    }
}
