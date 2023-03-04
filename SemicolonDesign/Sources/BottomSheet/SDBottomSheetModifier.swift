import SwiftUI

struct SDBottomSheetModifier: ViewModifier {

    var isPresented: Binding<Bool>
    var buttons: [(text: String, action: () -> Void)]

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented.wrappedValue {
                SDBottomSheet(isPresented: isPresented, buttons: buttons)
            }
        }
    }
}
