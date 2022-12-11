import SwiftUI

struct SelectButtonView: View {

    @Binding var selectedIndex: Int
    var index: Int
    var title: String

    var selection: Bool {
        get {
            return self.selectedIndex == self.index
        }
    }

    var body: some View {
        Button(action: {
            self.selectedIndex = index
        }, label: {
            Text(self.title)
                .sdText(
                    type: self.selection ? .body3 : .body4,
                    textColor: self.selection ? .GrayScale.gray50 : .GrayScale.gray900
                )
                .padding(.vertical, 6)
                .padding(.horizontal, 16)
                .background(self.selection ? Color.Primary.purple400 : Color.GrayScale.gray50)
                .cornerRadius(16)
        })
    }

}
