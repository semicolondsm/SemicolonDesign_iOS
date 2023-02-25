import SwiftUI

struct SDBottomSheetModifier: ViewModifier {

    var isPresented: Binding<Bool>
    var buttons: [(text: String, action: () -> Void)]

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented.wrappedValue {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Color.white
                        .edgesIgnoringSafeArea(.bottom)
                        .frame(height: CGFloat(40))
                }
                VStack(spacing: 0) {
                    Spacer()
                    SDBottomSheet(isPresented: isPresented, buttons: buttons)
                }
                .animation(.easeOut, value: isPresented.wrappedValue)
            }
        }
    }
}
