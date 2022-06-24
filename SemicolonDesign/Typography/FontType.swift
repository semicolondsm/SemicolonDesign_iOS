import SwiftUI

public enum FontType {

    case title1
    case title2
    case title3

    case subtitle1
    case subtitle2
    case subtitle3
    case subtitle4

    case body1
    case body2
    case body3

    case button1
    case button2

    case caption

}

public extension FontType {

    var fontSize: CGFloat {
        switch self {
        case .title1: return 40
        case .title2: return 36
        case .title3:  return 32
        case .subtitle1: return 32
        case .subtitle2: return 28
        case .subtitle3: return 24
        case .subtitle4: return 20
        case .body1: return 16
        case .body2: return 14
        case .body3: return 12
        case .button1: return 16
        case .button2: return 14
        case .caption: return 12
        }
    }

    var fontWeight: Font.Weight {
        switch self {
        case .title1, .title2, .title3:
            return .bold
        case .subtitle1, .subtitle2, .subtitle3, .subtitle4:
            return .medium
        case .body1, .body2, .body3:
            return .regular
        case .button1, .button2:
            return .regular
        case .caption:
            return .regular
        }
    }

    var lineHeight: CGFloat {
        switch self {
        case .title1: return 60
        case .title2: return 54
        case .title3: return 48
        case .subtitle1: return 48
        case .subtitle2: return 40
        case .subtitle3: return 36
        case .subtitle4: return 28
        case .body1: return 24
        case .body2: return 20
        case .body3: return 18
        case .button1: return 24
        case .button2: return 20
        case .caption: return 18
        }
    }

    var defaultColor: Color {
        switch self {
        case .title1, .title2, .title3:
            return .GrayScale.gray900
        case .subtitle1, .subtitle2, .subtitle3, .subtitle4:
            return .GrayScale.gray800
        case .body1, .body2, .body3:
            return .GrayScale.gray800
        case .button1, .button2:
            return .GrayScale.gray700
        case .caption:
            return .GrayScale.gray700
        }
    }

}
