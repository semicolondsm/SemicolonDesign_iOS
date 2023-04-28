import SwiftUI

struct SDTextFieldPreview: View {
    @State var text: String = ""
    var body: some View {
        VStack(spacing: 16) {

            SDTextField(
                title: "필드 레이블",
                placeholder: "플레이스 홀더",
                help: "도움말 텍스트",
                text: $text
            )
            .padding(.horizontal, 18)

            SDTextField(
                title: "필드 레이블",
                placeholder: "플레이스 홀더",
                help: "도움말 텍스트",
                text: .constant("입력 텍스트")
            )
            .padding(.horizontal, 18)

            SDTextField(
                title: "필드 레이블",
                placeholder: "플레이스 홀더",
                help: "도움말 텍스트",
                text: .constant("입력 텍스트"),
                isSecure: true
            )
            .padding(.horizontal, 18)

            SDTextField(
                title: "필드 레이블",
                placeholder: "플레이스 홀더",
                help: "도움말 텍스트",
                text: $text,
                errorMessage: "오류 메세지 텍스트"
            )
            .padding(.horizontal, 18)

            SDTextField(
                title: "필드 레이블",
                placeholder: "플레이스 홀더",
                help: "도움말 텍스트",
                text: $text,
                isDisabled: true
            )
            .padding(.horizontal, 18)
            
            SDTextField(
                title: "필드 레이블",
                placeholder: "플레이스 홀더",
                help: "도움말 텍스트",
                isImportant: true,
                text: $text
            )
            .padding(.horizontal, 18)
        }
    }
}
