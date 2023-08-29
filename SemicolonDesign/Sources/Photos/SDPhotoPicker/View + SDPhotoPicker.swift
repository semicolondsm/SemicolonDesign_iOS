import SwiftUI

public extension View {
    func sdPhotoPicker(isPresented: Binding<Bool>, selection: Binding<[UIImage]>, errorAction: (() -> Void)? = nil) -> some View {
        self.modifier(SDPhotoPickerModifier(
            isPresented: isPresented,
            selection: selection,
            errorAction: errorAction
        ))
    }
    func sdPhotoPicker(isPresented: Binding<Bool>, selection: Binding<UIImage>, errorAction: (() -> Void)? = nil) -> some View {
        self.modifier(SDPhotoPickerModifier(
            isPresented: isPresented,
            selection: selection,
            errorAction: errorAction
        ))
    }
}
