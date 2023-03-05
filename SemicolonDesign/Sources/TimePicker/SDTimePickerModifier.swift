import SwiftUI

struct SDTimePickerModifier: ViewModifier {

    var isPresented: Binding<Bool>

    var currentDate: Binding<String>
    var date: Binding<String>

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented.wrappedValue {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                SDTimePicker(currentTime: currentDate, time: date, isPresented: isPresented)
            }
        }
    }
}
