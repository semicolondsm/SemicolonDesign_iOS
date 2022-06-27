import SwiftUI

struct SDTextPreview: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                SDText("Title 1", type: .title1)
                SDText("Title 2", type: .title2)
                SDText("Title 3", type: .title3)
            }
            VStack(alignment: .leading) {
                SDText("Subtitle 1", type: .subtitle1)
                SDText("Subtitle 2", type: .subtitle2)
                SDText("Subtitle 3", type: .subtitle3)
                SDText("Subtitle 4", type: .subtitle4)
            }
            VStack(alignment: .leading) {
                SDText("Body 1", type: .body1)
                SDText("Body 2", type: .body2)
                SDText("Body 3", type: .body3)
            }
            VStack(alignment: .leading) {
                SDText("Button 1", type: .button1)
                SDText("Button 2", type: .button2)
            }
            VStack(alignment: .leading) {
                SDText("Caption", type: .caption)
            }
        }
    }
}
