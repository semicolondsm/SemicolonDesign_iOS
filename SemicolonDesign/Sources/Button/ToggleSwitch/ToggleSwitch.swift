import SwiftUI

public struct ToggleSwitch: View {

    @State var isOn: Bool = false

    public var body: some View {
        Toggle(isOn: $isOn, label: {})
            .labelsHidden()
            .tint(.Primary.purple400)
    }

}

//MARK: Preview
struct ToggleSwitch_Preview: PreviewProvider {
    @State static var toggleIsOn = false
    static var previews: some View {
        ToggleSwitch()
    }
}
