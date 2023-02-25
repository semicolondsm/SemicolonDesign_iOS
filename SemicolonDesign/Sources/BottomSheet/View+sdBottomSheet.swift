import SwiftUI

public extension View {
    func sdBottomSheet(isPresented: Binding<Bool>, buttons: [(text: String, action: () -> Void)]) -> some View {
        self.modifier(SDBottomSheetModifier(isPresented: isPresented, buttons: buttons))
    }
}
