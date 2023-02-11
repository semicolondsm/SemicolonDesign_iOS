import UIKit

class SDDatePickerCoordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    private let parent: SDDatePickerRepresentable
    let years: [Int]
    let months: [Int]
    var days: [Int]

    init(
        _ parent: SDDatePickerRepresentable,
        year: [Int],
        month:[Int]
    ) {
        self.parent = parent
        self.years = year
        self.months = month
        self.days = parent.updateDays()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }

    func pickerView(
        _ pickerView: UIPickerView,
        widthForComponent component: Int
    ) -> CGFloat {
        return 66
    }

    func pickerView(
        _ pickerView: UIPickerView,
        rowHeightForComponent component: Int
    ) -> CGFloat {
        return 44
    }

    func pickerView(
        _ pickerView: UIPickerView,
        viewForRow row: Int,
        forComponent component: Int,
        reusing view: UIView?
    ) -> UIView {
        pickerView.subviews.forEach { $0.backgroundColor = .clear }

        let label = UILabel(frame: .init(x: 0, y: 0, width: 62, height: 44))

        switch component {
        case 0:
            label.text = "\(years[row % years.count])"
        case 1:
            label.text = "\(months[row % months.count])"
        default:
            label.text = "\(days[row % days.count])"
        }

        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .medium)

        return label
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return years.count * 10
        case 1:
            return months.count * 10
        default:
            return days.count * 10
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            parent.year = years[row % years.count]
            self.days = parent.updateDays()
            pickerView.selectRow(months.count * 5, inComponent: 1, animated: false)
            pickerView.selectRow(days.count * 5, inComponent: 2, animated: false)
            pickerView.reloadComponent(2)
        case 1:
            parent.month = months[row % months.count]
            self.days = parent.updateDays()
            pickerView.selectRow(days.count * 5, inComponent: 2, animated: false)
            pickerView.reloadComponent(2)
        default:
            parent.day = days[row % days.count]
        }
        self.parent.date = "\(parent.year) \(parent.month) \(parent.day)".toDate("yyyy MM dd")
        print(self.parent.date.toString("yyyy MM dd"))
    }
}
