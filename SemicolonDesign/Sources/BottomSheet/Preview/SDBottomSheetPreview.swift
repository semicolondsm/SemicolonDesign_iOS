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
            .sdBottomSheet(isPresented: $isPresented, sdBottomSheet: {
                SDBottomSheet(buttons: [
                    (text: "수정하기", action: { }),
                    (text: "삭제하기", action: { })
                ])
            })
            .navigationTitle("바텀시트")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

