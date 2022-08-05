import SwiftUI

public struct SmallButton: View {

    @Binding var isLoading: Bool
    @Binding var isDisabled: Bool
    var text: String
    var action: () -> ()
    var icon: SmallButtonIconType
    var type: SmallButtonType

    public init(
        isLoading: Binding<Bool> = .constant(false),
        isDisabled: Binding<Bool> = .constant(false),
        text: String,
        action: @escaping () -> (),
        icon: SmallButtonIconType = .none,
        type: SmallButtonType = .default
    ) {
        self._isLoading = isLoading
        self._isDisabled = isDisabled
        self.text = text
        self.action = action
        self.icon = icon
        self.type = type
    }

    public var body: some View {
        Button(action: action) {
            HStack(spacing: 4) {
                if case .leftIcon(let image) = icon {
                    image
                        .frame(width: 16, height: 16)
                        .tint(type.textColor(isDisabled: isDisabled))
                }
                Text(text).sdText(type: .body2, textColor: type.textColor(isDisabled: isDisabled))
                if case .rightIcon(let image) = icon {
                    image
                        .frame(width: 16, height: 16)
                        .tint(type.textColor(isDisabled: isDisabled))
                }
                if isLoading {
                    ProgressView()
                        .scaleEffect(0.8)
                        .frame(width: 16, height: 16)
                        .tint(type.textColor(isDisabled: isDisabled))
                }
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(type.backgroundColor(isDisabled: isDisabled))
            .cornerRadius(5)
            .overlay {
                if !isDisabled {
                    RoundedRectangle(cornerRadius: 5).stroke(type.borderColor)
                }
            }
        }
        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
        .disabled(isDisabled)
    }

}

// MARK: Preview
struct SmallButton_Preview: PreviewProvider {
    static var previews: some View {
        SmallButtonPreview()
            .previewDevice("iPad mini (6th generation)")
    }
}
