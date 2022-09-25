import SwiftUI

public extension View {
    func sdErrorAlert(isPresented: Binding<Bool>, sdAlert: @escaping () -> SDErrorAlert) -> some View {
        self.fullScreenCover(isPresented: isPresented) {
            sdAlert()
        }
    }
}

public struct SDErrorAlert: View {

    @Environment(\.presentationMode) var presentationMode
    @State private var animate = false

    var errerMessage: String

    public init(errerMessage: String) {
        self.errerMessage = errerMessage
    }

    public var body: some View {
        ZStack {
            Color.black.opacity(0.2).ignoresSafeArea()
                .opacity(animate ? 1.0 : 0.0)
                .onTapGesture {
                    self.dismissAlert()
                }

            VStack(spacing: 10) {
                Text("문제가 발생했습니다.").sdText(type: .heading5)
                Text(errerMessage)
                    .sdText(type: .body4)
                    .multilineTextAlignment(.center)
                Button(action: {
                    self.dismissAlert()
                }, label: {
                    Text("확인").sdText(type: .body2, textColor: .GrayScale.gray0)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color.Primary.purple400)
                        .cornerRadius(12)
                })
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

struct SDErrorAlert_Preview: PreviewProvider {
    
    static var previews: some View {
        SDErrorAlertPreview()
    }
}
