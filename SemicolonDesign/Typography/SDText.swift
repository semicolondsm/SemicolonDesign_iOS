import SwiftUI

public extension Text {
    func sdText(type: FontType, textColor: Color) -> some View {
        ModifiedContent(content: self, modifier: SDText(type: type, textColor: textColor))
    }
    func sdText(type: FontType) -> some View {
        ModifiedContent(content: self, modifier: SDText(type: type))
    }
}

struct SDText: ViewModifier {
    var type: FontType
    var textColor: Color
    var font: UIFont

    init(type: FontType, textColor: Color) {
        self.type = type
        self.textColor = textColor

        if textColor == .GrayScale.gray0 && type.fontWeight == .regular {
            self.font = .systemFont(ofSize: type.fontSize, weight: .medium)
        } else {
            self.font = .systemFont(ofSize: type.fontSize, weight: type.fontWeight)
        }
    }
    init(type: FontType) {
        self.type = type
        self.font = .systemFont(ofSize: type.fontSize, weight: type.fontWeight)
        self.textColor = type.defaultColor
    }

    func body(content: Content) -> some View {
        content
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
