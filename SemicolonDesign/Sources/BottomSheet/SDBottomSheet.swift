import SwiftUI

public struct SDBottomSheet: View {

    @Environment(\.presentationMode) var presentationMode
    @State private var animate = false

    var buttons: [(text: String, action: () -> Void)]

    public init(
        buttons: [(text: String, action: () -> Void)]
    ) {
        self.buttons = buttons
    }

    public var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.opacity(0.2).ignoresSafeArea()
                .opacity(animate ? 1.0 : 0.0)
            VStack {
                Spacer()
                Color.white
                    .edgesIgnoringSafeArea(.bottom)
                    .frame(height: CGFloat(40))
            }
            VStack(alignment: .leading, spacing: 0) {
                ForEach(buttons, id: \.text) { button in
                    Button{
                        self.dismissBottomSheet()
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
        .onAppear {
            withAnimation(.default.speed(0.4)) {
                animate = true
            }
        }
        .onTapGesture {
            self.dismissBottomSheet()
        }
        .background(Background())
    }

    private func dismissBottomSheet() {
        self.animate = false
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SDBottomSheetPreview()
    }
}
