import SwiftUI

struct SDAlertPreview: View {

    @State var isAlert1Presented = false
    @State var isAlert2Presented = false

    var body: some View {
        VStack {
            Button(action: {
                isAlert1Presented = true
            }, label: {
                Text("Show Alert1")
            })
            Button(action: {
                isAlert2Presented = true
            }, label: {
                Text("Show Alert2")
            })
        }
        .sdAlert(isPresented: $isAlert1Presented) {
            SDAlert(
                title: "삭제하시겠습니까",
                content: "아니 근데 진짜로? 아니 근데 진짜로? 아니 근데 진짜로? 아니 근데 진짜로?",
                button1: (text: "취소", action: { }),
                button2: (text: "확인", action: { })
            )
        }
        .sdAlert(isPresented: $isAlert2Presented) {
            SDAlert(
                title: "아니 근데 진짜로? 아니 근데 진짜로? 아니 근데 진짜로?",
                button1: (text: "취소", action: { }),
                button2: (text: "확인", action: { })
            )
        }
    }

}
