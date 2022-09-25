import SwiftUI

struct SDErrorAlertPreview: View {

    @State var present = false

    var body: some View {
        VStack {
            Button(action: {
                present = true
            }, label: {
                Text("Show Alert")
            })
        }
        .sdErrorAlert(isPresented: $present) {
            SDErrorAlert(errerMessage: "인터넷 연결이 불안정합니다.")
        }
    }

}
