import SwiftUI

public struct Selector: View {

    var selectedIndex: Binding<Int>
    var buttonTitles: [String]

    init(selectedIndex: Binding<Int>, buttonTitles: [String]) {
        self.selectedIndex = selectedIndex
        self.buttonTitles = buttonTitles
        UIScrollView.appearance().bounces = false
    }

    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(Array(zip(buttonTitles.indices, buttonTitles)), id: \.0) { index, item in
                    SelectButtonView(
                        selectedIndex: self.selectedIndex,
                        index: index,
                        title: item
                    )
                }
            }
        }
    }

}

//MARK: Preview
struct Selector_Preview: PreviewProvider {
    static var previews: some View {
        SelectorPreview()
    }
}
