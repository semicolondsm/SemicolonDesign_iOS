import SwiftUI

public struct FillButton: View {

    
    @Binding var isDisabled: Bool
    var text: String
    var action: () -> ()
    var type: FillButtonType

    public init(
        isDisabled: Binding<Bool> = .constant(false),
        text: String,
        action: @escaping () -> (),
        type: FillButtonType = .default
    ) {
        self._isDisabled = isDisabled
        self.text = text
        self.action = action
        self.type = type
    }

    public var body: some View {
        Button(action: action) {
            Text(text).sdText(type: .body1, textColor: .GrayScale.gray0)
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], 14)
                .background(isDisabled ? Color.Primary.purple50 : Color.Primary.purple400)
        }
        .cornerRadius(type == .rounded ? 12: 0)
        .padding([.bottom, .leading, .trailing], type == .rounded ? 16 : 0)
        .background(Color.white)
        .padding(.top, type == .rounded ? 16: 0)
        .disabled(isDisabled)
    }
}

// MARK: Preview
struct FillButton_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            FillButton(text: "버튼", action: { }, type: .rounded)
            FillButton(isDisabled: .constant(true), text: "버튼", action: { }, type: .rounded)
            FillButton(text: "버튼", action: { })
            FillButton(isDisabled: .constant(true), text: "버튼", action: { })
        }
    }
}
