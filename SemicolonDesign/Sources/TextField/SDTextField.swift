import SwiftUI

public struct SDTextField: View {
    
    @FocusState private var isFocusing: Bool

    let title: String
    let placeholder: String
    let help: String
    @Binding var text: String
    @Binding var errorMessage: String
    @Binding var isDisableed: Bool

    public init(
        title: String = "",
        placeholder: String = "",
        help: String = "",
        text: Binding<String>,
        errorMessage: Binding<String> = .constant(""),
        isDisableed: Binding<Bool> = .constant(false)
    ) {
        self.title = title
        self.placeholder = placeholder
        self.help = help
        self._text = text
        self._errorMessage = errorMessage
        self._isDisableed = isDisableed
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {

            if !title.isEmpty {
                Text(title).sdText(type: .body4, textColor: getTitleColor())
                    .padding(.bottom, 8)
            }

            TextField(placeholder, text: $text)
                .font(.system(size: 16))
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                .frame(height: 44, alignment: .center)
                .overlay { RoundedRectangle(cornerRadius: 8).stroke(
                    getStrokeColor()
                )}
                .background(getBackgroundColor())
                .foregroundColor(getTextColor())
                .accentColor(.GrayScale.gray800)
                .disabled(isDisableed)
                .focused($isFocusing)

            if !isDisableed {
                if errorMessage.isEmpty {
                    if !help.isEmpty {
                        Text(help)
                            .sdText(type: .caption, textColor: .GrayScale.gray400)
                            .padding(.top, 4)
                    }
                } else {
                    Text(errorMessage)
                        .sdText(type: .caption, textColor: .System.red400)
                        .padding(.top, 4)
                }
            }

        }
    }

}


extension SDTextField {

    private func getTextColor() -> Color {
        if isDisableed {
            return .GrayScale.gray300
        } else {
            return .GrayScale.gray800
        }
    }

    private func getBackgroundColor() -> Color {
        if isDisableed {
            return .GrayScale.gray50
        } else {
            return .clear
        }
    }

    private func getTitleColor() -> Color {
        if isDisableed {
            return .GrayScale.gray200
        } else if !errorMessage.isEmpty {
            return .System.red400
        } else {
            return .GrayScale.gray700
        }
    }

    private func getStrokeColor() -> Color {
        if isDisableed {
            return .GrayScale.gray300
        } else if !errorMessage.isEmpty {
            return .System.red400
        } else if isFocusing {
            return .GrayScale.gray800
        } else {
            return .GrayScale.gray500
        }
    }

}

struct SDTextField_Preview: PreviewProvider {
    static var previews: some View {
        SDTextFieldPreview()
    }
}
