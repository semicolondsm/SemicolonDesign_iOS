import SwiftUI

struct SDPeriodPickerRepresentable: UIViewRepresentable {
    @Binding var defaultPeriod: Int?
    @Binding var period: Int?

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

        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1), execute: {
            pickerView.selectRow(
                (period.firstIndex(of: self.defaultPeriod ?? 1)! + (period.count * 5)),
                inComponent: 0,
                animated: false
            )
            self.period = defaultPeriod
        })

        pickerView.frame.size.height = 122

        return pickerView
    }

    func updateUIView(_ uiView: UIPickerView, context: Context) {
    }

}
