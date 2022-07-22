import SwiftUI

struct SDTextPreview: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Heading 1").sdText(type: .heading1)
                Text("Heading 2").sdText(type: .heading2)
                Text("Heading 3").sdText(type: .heading3)
                Text("Heading 4").sdText(type: .heading4)
                Text("Heading 5").sdText(type: .heading5)
                Text("Heading 6").sdText(type: .heading6)
            }
            VStack(alignment: .leading) {
                Text("Body 1").sdText(type: .body1)
                Text("Body 2").sdText(type: .body2)
                Text("Body 3").sdText(type: .body3)
                Text("Body 4").sdText(type: .body4)
            }
            VStack(alignment: .leading) {
                Text("Caption").sdText(type: .caption)
                    .foregroundColor(.red)
            }
        }
    }
}
