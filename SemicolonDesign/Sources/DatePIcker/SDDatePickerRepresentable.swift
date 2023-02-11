import SwiftUI

struct SDDatePickerRepresentable: UIViewRepresentable {
    @Binding var date: Date
    @State var year = Int(Date().toString("yyyy")) ?? 0
    @State var month = Int(Date().toString("MM")) ?? 0
    @State var day = Int(Date().toString("dd")) ?? 0

    let pickerView = UIPickerView(frame: .init(x: 0, y: 0, width: 228, height: 122))


    func makeCoordinator() -> SDDatePickerCoordinator {
        return SDDatePickerCoordinator(
            self,
            year: Array(year...2099),
            month: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        )
    }

    func makeUIView(context: Context) -> UIPickerView {
        pickerView.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)

        pickerView.delegate = context.coordinator
        pickerView.dataSource = context.coordinator
        let years = context.coordinator.years
        let months = context.coordinator.months
        let days = context.coordinator.days

        pickerView.selectRow(
            (years.firstIndex(of: self.year)! + (years.count * 5)),
            inComponent: 0,
            animated: false
        )
        pickerView.selectRow(
            (months.firstIndex(of: self.month)! + (months.count * 5)),
            inComponent: 1,
            animated: false
        )
        pickerView.selectRow(
            days.firstIndex(of: self.day)! + (days.count * 5),
            inComponent: 2,
            animated: false
        )
        pickerView.frame.size.height = 122

        return pickerView
    }

    func updateUIView(_ uiView: UIPickerView, context: Context) {
    }

    func updateDays() -> [Int] {
        return Array(1..."\(String(year)) \(String(month))".toDate("yyyy MM").getDaysCountInMonth() )
    }
}
