import UIKit

class SDTimePickerCoordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    private let parent: SDTimePickerRepresentable
    let hour: [String]
    let minute: [String]

    init(
        _ parent: SDTimePickerRepresentable,
        hour: [String],
        minute:[String]
    ) {
        self.parent = parent
        self.hour = hour
        self.minute = minute
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if parent.minute > 50 {
            parent.date = "\(parent.hour + 1):00".toDate("HH:mm")
            parent.currentDate = "\(parent.hour + 1):00".toDate("HH:mm")
        } else {
            parent.date = "\(parent.hour):\((self.minute.first { Int($0)! >= parent.minute } ?? "00"))".toDate("HH:mm")
            parent.currentDate = "\(parent.hour):\((self.minute.first { Int($0)! >= parent.minute } ?? "00"))".toDate("HH:mm")
        }
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
            parent.hour = Int(hour[row % hour.count]) ?? 0
            parent.minute = 0
            pickerView.selectRow(minute.count * 5, inComponent: 1, animated: false)
            pickerView.reloadComponent(1)
        default:
            parent.minute = Int(minute[row % minute.count]) ?? 0
        }
        self.parent.date = "\(parent.hour):\(parent.minute)".toDate("HH:mm")
    }
}
