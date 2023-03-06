import SwiftUI

public extension View {
    func sdBottomSheet(isPresented: Binding<Bool>, sdBottomSheet: @escaping() -> SDBottomSheet) -> some View {
        self.fullScreenCover(isPresented: isPresented) {
            sdBottomSheet()
        }
    }
}
