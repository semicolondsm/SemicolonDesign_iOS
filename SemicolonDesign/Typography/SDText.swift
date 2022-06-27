import SwiftUI

public struct SDText: View {
    var content: String
    var type: FontType
    var textColor: Color
    var font: Font

    init(_ content: String, type: FontType, textColor: Color) {
        self.content = content
        self.type = type
        self.textColor = textColor

        if textColor == .GrayScale.gray0 && type.fontWeight == .regular {
            self.font = .system(size: type.fontSize, weight: .medium)
        } else {
            self.font = .system(size: type.fontSize, weight: type.fontWeight)
        }
    }
    init(_ content: String, type: FontType) {
        self.content = content
        self.type = type
        self.font = .system(size: type.fontSize, weight: type.fontWeight)
        self.textColor = type.defaultColor
    }

    public var body: some View {
        Text(content)
            .font(font)
            .frame(height: type.lineHeight)
            .foregroundColor(textColor)
    }
}

// MARK: Preview
struct SDText_Preview: PreviewProvider {
    static var previews: some View {
        SDTextPreview()
    }
}
