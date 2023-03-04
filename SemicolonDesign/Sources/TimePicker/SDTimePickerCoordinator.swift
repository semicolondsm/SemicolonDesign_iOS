import UIKit

class SDTimePickerCoordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    private let parent: SDTimePickerRepresentable
    let hour: [Int]
    let minute: [Int]

    init(
        _ parent: SDTimePickerRepresentable,
        hour: [Int],
        minute:[Int]
    ) {
        self.parent = parent
        self.hour = hour
        self.minute = minute
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(
        _ pickerView: UIPickerView,
        widthForComponent component: Int
    ) -> CGFloat {
        return 84
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
            label.text = "\(hour[row % hour.count])"
        default:
            label.text = "\(minute[row % minute.count])"
        }

        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .medium)

        return label
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return hour.count * 10
        default:
            return minute.count * 10
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            parent.hour = hour[row % hour.count]
            pickerView.reloadComponent(2)
        default:
            parent.minute = minute[row % minute.count]
            pickerView.reloadComponent(2)
        }
        self.parent.date = "\(parent.hour):\(parent.minute)".toDate("hh:mm")
    }
}
