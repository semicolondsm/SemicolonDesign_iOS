import SwiftUI

public struct FillButton: View {

    var text: String
    var action: () -> ()
    var type: FillButtonType

    public init(
        text: String,
        action: @escaping () -> (),
        type: FillButtonType = .default
    ) {
        self.text = text
        self.action = action
        self.type = type
    }

    public var body: some View {
        Button(action: action) {
            SDText(text, type: .body1, textColor: .GrayScale.gray0)
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], 14)
                .background(Color.Primary.purple400)
        }
        .cornerRadius(type == .rounded ? 16: 0)
        .padding(type == .rounded ? 12: 0)
    }
}

// MARK: Preview
struct FillButton_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            FillButton(text: "버튼", action: { }, type: .rounded)
            FillButton(text: "버튼", action: { })
        }
    }
}
