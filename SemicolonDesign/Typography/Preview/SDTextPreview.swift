import SwiftUI

struct SDTextPreview: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                SDText("Heading 1", type: .heading1)
                SDText("Heading 2", type: .heading2)
                SDText("Heading 3", type: .heading3)
                SDText("Heading 4", type: .heading4)
                SDText("Heading 5", type: .heading5)
                SDText("Heading 6", type: .heading6)
            }
            VStack(alignment: .leading) {
                SDText("Body 1", type: .body1)
                SDText("Body 2", type: .body2)
                SDText("Body 3", type: .body3)
                SDText("Body 4", type: .body4)
            }
            VStack(alignment: .leading) {
                SDText("Caption", type: .caption)
            }
        }
    }
}
