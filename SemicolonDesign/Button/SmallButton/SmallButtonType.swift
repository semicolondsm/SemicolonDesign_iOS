import SwiftUI

public enum SmallButtonType {
    case `default`
    case defaultWithoutBackground
    case defaultWithBorder
    case color
    case colorWithoutBackground
    case lightColor
    case link
}

extension SmallButtonType {

    func backgroundColor(isDisabled: Bool) -> Color {
        switch self {
        case .default:
            return .GrayScale.gray50
        case .defaultWithBorder:
            return isDisabled ? .GrayScale.gray50 : .white
        case .color:
            return isDisabled ? .Primary.purple50 : .Primary.purple400
        case .lightColor:
            return isDisabled ? .GrayScale.gray50 : .Primary.purple50
        default:
            return .clear
        }
    }

    func textColor(isDisabled: Bool) -> Color {
        switch self {
        case .colorWithoutBackground, .lightColor:
            return isDisabled ? .GrayScale.gray200 : .Primary.purple400
        case .link:
            return isDisabled ? .GrayScale.gray200 : .System.blue400
        case .color:
            return .GrayScale.gray0
        default:
            return isDisabled ? .GrayScale.gray200 : .GrayScale.gray700
        }
    }

    var borderColor: Color {
        switch self {
        case .defaultWithBorder:
            return .GrayScale.gray50
        default:
            return .clear
        }
    }

}
