import SwiftUI

struct SDTextEditorPreview: View {
    @State var text: String = ""
    var body: some View {
        SDTextEditor(
            placeholder: "값을 입력해주세요.",
            text: $text
        )
        .frame(height: 100)
    }
}
