# ``SemicolonDesign/SDAlert``

SemicolonDesign의 기본 Alert
![SDAlert](SDAlert)

## Usage

```swift
struct AnyView: View {

    @State var present = false

    var body: some View {
        VStack {
            Button(action: {
                present = true
            }, label: {
                Text("Show Alert")
            })
        }
        .sdAlert(isPresented: $present) {
            SDAlert(
                title: "ㄹㅇ?",
                content: "아니 근데 진짜로? 아니 근데 진짜로? 아니 근데 진짜로? 아니 근데 진짜로?",
                button1: (text: "취소", action: { }),
                button2: (text: "확인", action: { })
            )
        }
    }

}

```


> 다음 그림들과 같이 content가 있을때와 없을때의 UI 차이가 있습니다. 
> ![DifferentSDAlerts](DifferentSDAlerts)
