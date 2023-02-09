import SwiftUI

public extension View {
    func sdPhotoPicker(isPresented: Binding<Bool>, selection: Binding<[UIImage]>) -> some View {
        self.modifier(SDPhotoPickerModifier(isPresented: isPresented, selection: selection))
    }
    func sdPhotoPicker(isPresented: Binding<Bool>, selection: Binding<UIImage>) -> some View {
        self.modifier(SDPhotoPickerModifier(isPresented: isPresented, selection: selection))
    }
}
