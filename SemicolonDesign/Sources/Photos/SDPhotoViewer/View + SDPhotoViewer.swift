import SwiftUI

public extension View {
    func sdPhotoViewer(isPresented: Binding<Bool>, images: [URL]) -> some View {
        self.fullScreenCover(isPresented: isPresented) {
            SDPhotoViewer(images: images)
        }
    }
}
