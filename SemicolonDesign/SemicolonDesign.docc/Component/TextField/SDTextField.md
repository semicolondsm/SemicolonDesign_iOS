# ``SemicolonDesign/SDTextField``

![SDTextField](SDTextField)

## Usage

SDTextField는 기본적으로 아래와 같이 사용합니다.

`focused()`를 사용하기 위해 VStack안에 넣어 주시길 바랍니다.

```swift
struct AnyView: View {

    @State var present = false

    var body: some View {
        VStack {
            SDTextField(text: $text)
        }
    }

}

```



SDTextField는 다음과 같은 옵션들과 함께 사용 하실 수 있습니다.

상단의 사진과 함께 확인해주세요.

```swift
title: String                   <- `필드 레이블`
placeholder: String             <- `플레이스 홀더`
help: String                    <- `도움말 텍스트`
text: Binding<String>,          <- `입력 텍스트`
errorMessage: Binding<String>   <- `오류 메세지 텍스트`
isDisableed: Binding<Bool>      <- 비활성 여부 (비활성시 최하단의 텍스트 필드임)
```
> 오류 발생 여부는 `errorMessage`이 빈 문자열인지의 여부로 판단 됩니다. 오류 발생시 `errorMessage`에 에러 메세지를 담으면, 상단 사진의 3번째 텍스트 필드와 같이 에러 메세지가 표시됩니다.