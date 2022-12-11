import SwiftUI

struct SelectorPreview: View {

    @State var selectedIndex: Int = 0

    var body: some View {
        Selector(
            selectedIndex: self.$selectedIndex,
            buttonTitles: ["홈", "공지", "동아리", "대마무숲"]
        )
        .padding(16)
    }

}
