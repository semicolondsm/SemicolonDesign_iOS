import SwiftUI

struct SDBottomSheetPreview: View {
    @State var isPresented: Bool = false
    var body: some View {
        NavigationView {
            Button {
                isPresented = true
            } label: {
                Text("Test BottomSheet")
            }
            .sdBottomSheet(isPresented: $isPresented, buttons: [
                (text: "수정하기", action: { print("!!!!!") }),
                (text: "삭제하기", action: { print("반가워요") })
            ])
        }
    }
}

