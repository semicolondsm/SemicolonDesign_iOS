import SwiftUI

public struct SDText: View {
    var content: String
    var type: FontType
    var textColor: Color
    var font: UIFont

    public init(_ content: String, type: FontType, textColor: Color) {
        self.content = content
        self.type = type
        self.textColor = textColor

        if textColor == .GrayScale.gray0 && type.fontWeight == .regular {
            self.font = .systemFont(ofSize: type.fontSize, weight: .medium)
        } else {
            self.font = .systemFont(ofSize: type.fontSize, weight: type.fontWeight)
        }
    }
    public init(_ content: String, type: FontType) {
        self.content = content
        self.type = type
        self.font = .systemFont(ofSize: type.fontSize, weight: type.fontWeight)
        self.textColor = type.defaultColor
    }

    public var body: some View {
        Text(content)
            .font(Font(font))
            .lineSpacing(type.lineHeight - font.lineHeight)
            .padding(.vertical, (type.lineHeight - font.lineHeight) / 2)
            .foregroundColor(textColor)
    }
}

// MARK: Preview
struct SDText_Preview: PreviewProvider {
    static var previews: some View {
        SDTextPreview()
            .previewDevice("iPad mini (6th generation)")
    }
}
