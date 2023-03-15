import SwiftUI

struct SDPeriodPickerRepresentable: UIViewRepresentable {
    @Binding var period: Int

    let pickerView = UIPickerView(frame: .init(x: 0, y: 0, width: 120, height: 122))

    func makeCoordinator() -> SDPeriodPickerCoordinator {
        return .init(
            self,
            period: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        )
    }

    func makeUIView(context: Context) -> UIPickerView {
        pickerView.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        pickerView.delegate = context.coordinator
        pickerView.dataSource = context.coordinator
        let period = context.coordinator.period

        pickerView.selectRow(
            (period.firstIndex(of: self.period)! + (period.count * 5)),
            inComponent: 0,
            animated: false
        )

        pickerView.frame.size.height = 122

        return pickerView
    }

    func updateUIView(_ uiView: UIPickerView, context: Context) {
    }

}
