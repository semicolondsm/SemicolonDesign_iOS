import SwiftUI

public struct SDBottomSheet: View {

    @Environment(\.presentationMode) var presentationMode
    var buttons: [(text: String, action: () -> Void)]

    public init(
        buttons: [(text: String, action: () -> Void)]
    ) {
        self.buttons = buttons
    }

    public var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.opacity(0.4).ignoresSafeArea()
            VStack {
                Spacer()
                Color.white
                    .edgesIgnoringSafeArea(.bottom)
                    .frame(height: CGFloat(40))
            }
            VStack(alignment: .leading, spacing: 0) {
                ForEach(buttons, id: \.text) { button in
                    Button{
                        self.presentationMode.wrappedValue.dismiss()
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
            .padding(.top, 36)
            .padding(.bottom, 4)
            .background(Color.white)
            .cornerRadius(16, [.topLeft, .topRight])
        }
        .onTapGesture {
            self.presentationMode.wrappedValue.dismiss()
        }
        .background(Background())
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SDBottomSheetPreview()
    }
}
