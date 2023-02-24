import SwiftUI

struct SDBottomSheet: View {
    @Binding var isPresented: Bool
    var buttons: [(text: String, action: () -> Void)]

    init(
        isPresented: Binding<Bool>,
        buttons: [(text: String, action: () -> Void)]
    ) {
        self.buttons = buttons
        self._isPresented = isPresented
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(buttons, id: \.text) { button in
                Button{
                    self.isPresented = false
                    button.action()
                } label: {
                    HStack {
                        Text(button.text)
                        Spacer()
                    }
                }
                .padding(.bottom, 26)
            }
        }
        .foregroundColor(.black)
        .padding(.leading, 29)
        .padding(.top, 38)
        .padding(.bottom, 4)
        .background(Color.white)
        .cornerRadius(16, [.topLeft, .topRight])
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SDBottomSheetPreview()
    }
}
