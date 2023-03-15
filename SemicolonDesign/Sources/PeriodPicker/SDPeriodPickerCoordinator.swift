import UIKit

class SDPeriodPickerCoordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

    private let parent: SDPeriodPickerRepresentable
    let period: [Int]

    init(
        _ parent: SDPeriodPickerRepresentable,
        period: [Int]
    ) {
        self.parent = parent
        self.period = period
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(
        _ pickerView: UIPickerView,
        widthForComponent component: Int
    ) -> CGFloat {
        return 120
    }

    func pickerView(
        _ pickerView: UIPickerView,
        rowHeightForComponent component: Int
    ) -> CGFloat {
        return 48
    }

    func pickerView(
        _ pickerView: UIPickerView,
        viewForRow row: Int,
        forComponent component: Int,
        reusing view: UIView?
    ) -> UIView {
        pickerView.subviews.forEach { $0.backgroundColor = .clear }

        let label = UILabel(frame: .init(x: 0, y: 0, width: 120, height: 48))

        label.text = "\(period[row % period.count])교시"

        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .medium)

        return label
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return period.count * 10
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        parent.period = period[row % period.count]
    }
}
