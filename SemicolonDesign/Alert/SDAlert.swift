import SwiftUI

public extension View {
    func sdAlert(isPresented: Binding<Bool>, sdAlert: @escaping () -> SDAlert) -> some View {
        self.fullScreenCover(isPresented: isPresented) {
            sdAlert()
        }
    }
}

public struct SDAlert: View {

    @Environment(\.presentationMode) var presentationMode
    @State private var animate = false

    var title: String
    var content: String
    var button1: (text: String, action: () -> ())
    var button2: (text: String, action: () -> ())

    public init(
        title: String,
        content: String,
        button1: (text: String, action: () -> ()),
        button2: (text: String, action: () -> ())
    ) {
        self.title = title
        self.content = content
        self.button1 = button1
        self.button2 = button2
    }

    public var body: some View {
        ZStack {
            Color.black.opacity(0.2).ignoresSafeArea()
                .opacity(animate ? 1.0 : 0.0)
                .onTapGesture {
                    self.dismissAlert()
                }

            VStack(spacing: 10) {
                Text(title).sdText(type: .heading5)
                Text(content)
                    .sdText(type: .body4)
                    .multilineTextAlignment(.center)
                HStack(spacing: 13) {
                    Button(action: {
                        self.button1.action()
                        self.dismissAlert()
                    }, label: {
                        Text(button1.text).sdText(type: .body2)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(Color.GrayScale.gray50)
                            .cornerRadius(12)
                    })
                    Button(action: {
                        self.button2.action()
                        self.dismissAlert()
                    }, label: {
                        Text(button2.text).sdText(type: .body2, textColor: .GrayScale.gray0)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(Color.Primary.purple400)
                            .cornerRadius(12)
                    })
                }
            }
            .padding(.top, 15)
            .padding([.horizontal, .bottom], 20)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.1), radius: 12, x: 4, y: 4)
            .padding([.horizontal], 32)
        }
        .onAppear {
            withAnimation(.default.speed(0.4)) {
                animate = true
            }
        }
        .background(Background())
    }

    private func dismissAlert() {
        animate = false
        self.presentationMode.wrappedValue.dismiss()
    }

}

struct SDAlert_Preview: PreviewProvider {
    
    static var previews: some View {
        SDAlertPreview()
    }
}
