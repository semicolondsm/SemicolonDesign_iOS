import SwiftUI

public struct SDTextField: View {

    let title: String
    let placeholder: String
    let help: String
    var isImportant: Bool
    @Binding var text: String
    var errorMessage: String
    var isDisabled: Bool
    var isSecure: Bool

    public init(
        title: String = "",
        placeholder: String = "",
        help: String = "",
        isImportant: Bool = false,
        text: Binding<String>,
        errorMessage: String = "",
        isDisabled: Bool = false,
        isSecure: Bool = false
    ) {
        self.title = title
        self.placeholder = placeholder
        self.help = help
        self.isImportant = isImportant
        self._text = text
        self.errorMessage = errorMessage
        self.isDisabled = isDisabled
        self.isSecure = isSecure
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {

            if !title.isEmpty {
                HStack(alignment: .top, spacing: 0) {
                    Text(title)
                        .sdText(type: .body4, textColor: getTitleColor())
                        .padding(.bottom, 8)
                    Text(isImportant ? "*" : "")
                        .foregroundColor(Color.System.red400)
                }
            }
            
            if !isSecure {
                TextField(placeholder, text: $text)
                    .modifier(SDTextFieldModifier(
                        text: text,
                        errorMessage: errorMessage,
                        isDisabled: isDisabled
                    ))
            } else {
                SecureField(placeholder, text: $text)
                    .modifier(SDTextFieldModifier(
                        text: text,
                        errorMessage: errorMessage,
                        isDisabled: isDisabled
                    ))
            }

            if !isDisabled {
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .sdText(type: .caption2, textColor: .System.red400)
                        .padding(.top, 4)
                } else if !help.isEmpty {
                    Text(help)
                        .sdText(type: .caption2, textColor: .GrayScale.gray400)
                        .padding(.top, 4)
                }
            }

        }
    }

    private func getTitleColor() -> Color {
        if isDisabled {
            return .GrayScale.gray200
        } else if !errorMessage.isEmpty {
            return .System.red400
        } else {
            return .GrayScale.gray700
        }
    }

}

struct SDTextFieldModifier: ViewModifier {
    
    @FocusState private var isFocusing: Bool
    
    var text: String
    var errorMessage: String
    var isDisabled: Bool
    
    func body(content: Content) -> some View {
        content
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .font(.system(size: 16))
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            .frame(height: 44, alignment: .center)
            .background(getBackgroundColor())
            .cornerRadius(8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(getStrokeColor())
            }
            .foregroundColor(getTextColor())
            .accentColor(.GrayScale.gray800)
            .disabled(isDisabled)
            .focused($isFocusing)
    }
    
    private func getTextColor() -> Color {
        if isDisabled || text.isEmpty {
            return .GrayScale.gray300
        } else {
            return .GrayScale.gray800
        }
    }

    private func getBackgroundColor() -> Color {
        if isDisabled || text.isEmpty {
            return .GrayScale.gray50
        } else {
            return .clear
        }
    }

    private func getStrokeColor() -> Color {
        if isDisabled || text.isEmpty {
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
