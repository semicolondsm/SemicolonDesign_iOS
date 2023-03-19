import SwiftUI

struct SDOkayAlertPreview: View {

    @State var present = false

    var body: some View {
        VStack {
            Button(action: {
                present = true
            }, label: {
                Text("Show Alert")
            })
        }
        .sdOkayAlert(isPresented: $present) {
            SDOkayAlert(title: "문제가 발생했습니다.", message: "다시 확인해주세요.")
        }
    }

}
