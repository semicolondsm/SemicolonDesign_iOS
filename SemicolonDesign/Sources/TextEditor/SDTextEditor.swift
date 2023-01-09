import SwiftUI


struct SDTextEditor: View {
    let placeholder: String
    @Binding var text: String

    init(placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .sdText(type: .body4)
                    .padding(.top, 12)
                    .padding(.leading, 16)
            }
            TextEditor(text: $text)
                .hideBackground()
                .padding(.top, 6)
                .padding(.leading, 12)
                .font(.system(size: 14, weight: .regular))
        }
        .background(Color.GrayScale.gray100)
        .cornerRadius(8)
    }
}

struct SDTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        SDTextEditorPreview()
    }
}

extension TextEditor {
    @ViewBuilder func hideBackground() -> some View {
        if #available(iOS 16, *) {
            self.scrollContentBackground(.hidden)
        } else { self }
    }
}
