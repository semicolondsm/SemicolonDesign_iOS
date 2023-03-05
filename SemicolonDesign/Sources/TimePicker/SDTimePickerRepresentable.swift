import SwiftUI

struct SDTimePickerRepresentable: UIViewRepresentable {
    @Binding var date: Date
    @State var hour = Int(Date().toString("HH")) ?? 0
    @State var minute = Int(Date().toString("mm")) ?? 0

    let pickerView = UIPickerView(frame: .init(x: 0, y: 0, width: 258, height: 122))

    func makeCoordinator() -> SDTimePickerCoordinator {
        return SDTimePickerCoordinator(
            self,
            hour: ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12",
                  "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
            minute: ["00", "10", "20", "30", "40", "50"]
        )
    }

    func makeUIView(context: Context) -> UIPickerView {
        pickerView.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        pickerView.delegate = context.coordinator
        pickerView.dataSource = context.coordinator
        let hour = context.coordinator.hour
        let minute = context.coordinator.minute

        pickerView.selectRow(
            hour.firstIndex(of: String(self.hour))! + (hour.count * 5),
            inComponent: 0,
            animated: false
        )
        pickerView.selectRow(
            minute.firstIndex { Int($0)! >= self.minute }! + (minute.count * 5),
            inComponent: 1,
            animated: false
        )

        pickerView.frame.size.height = 122

        return pickerView
    }

    func updateUIView(_ uiView: UIPickerView, context: Context) {
    }
}
