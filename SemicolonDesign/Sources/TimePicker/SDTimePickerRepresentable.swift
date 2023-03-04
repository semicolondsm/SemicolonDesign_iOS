import SwiftUI

struct SDTimePickerRepresentable: UIViewRepresentable {
    @Binding var date: Date
    @State var hour = Int(Date().toString("HH")) ?? 0
    @State var minute = Int(Date().toString("mm")) ?? 0

    let pickerView = UIPickerView(frame: .init(x: 0, y: 0, width: 258, height: 122))

    func makeCoordinator() -> SDTimePickerCoordinator {
        return SDTimePickerCoordinator(
            self,
            hour: Array(0...23),
            minute: Array(0...59)
        )
    }

    func makeUIView(context: Context) -> UIPickerView {
        pickerView.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        pickerView.delegate = context.coordinator
        pickerView.dataSource = context.coordinator
        let hour = context.coordinator.hour
        let minute = context.coordinator.minute

        pickerView.selectRow(
            hour.firstIndex(of: self.hour)! + (hour.count * 5),
            inComponent: 0,
            animated: false
        )
        pickerView.selectRow(
            minute.firstIndex(of: self.minute)! + (minute.count * 5),
            inComponent: 1,
            animated: false
        )

        pickerView.frame.size.height = 122

        return pickerView
    }

    func updateUIView(_ uiView: UIPickerView, context: Context) {
    }
}
