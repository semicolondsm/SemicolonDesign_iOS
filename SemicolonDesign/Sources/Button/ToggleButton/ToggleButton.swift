import SwiftUI

struct ToggleButton: View {
    let characters = ["Picard", "Riker", "Laforge", "Data"]
    @State private var selectedCharacter = "Picard"
    
    var body: some View {
        Picker("", selection: $selectedCharacter) {
            ForEach(characters, id: \.self) { character in
                Text(character)
            }
        }
        .labelsHidden()
        .pickerStyle(.segmented)
    }
}

struct ToggleButton_Preview: PreviewProvider {
    static var previews: some View {
        ToggleButton()
    }
}
