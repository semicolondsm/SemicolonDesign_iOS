import SwiftUI

public enum FontType {

    case heading1
    case heading2
    case heading3
    case heading4
    case heading5
    case heading6

    case body1
    case body2
    case body3
    case body4

    case caption1
    case caption2
    case caption3
    case caption4

}

extension FontType {

    var fontSize: CGFloat {
        switch self {

        case .heading1: return 40
        case .heading2: return 36
        case .heading3: return 32
        case .heading4: return 28
        case .heading5: return 24
        case .heading6: return 20

        case .body1, .body2: return 16
        case .body3, .body4: return 14
            
        case .caption1, .caption2: return 12
        case .caption3, .caption4: return 10

        }
    }

    var fontWeight: UIFont.Weight {
        switch self {

        case .heading1, .heading2, .heading3: return .bold
        case .heading4, .heading5, .heading6: return .medium

        case .body1, .body3: return .medium
        case .body2, .body4: return .regular

        case .caption1, .caption3: return .medium
        case .caption2, .caption4: return .regular

        }
    }

    var lineHeight: CGFloat {
        switch self {

        case .heading1: return 60
        case .heading2: return 54
        case .heading3: return 48
        case .heading4: return 40
        case .heading5: return 36
        case .heading6: return 28

        case .body1, .body2: return 24
        case .body3, .body4: return 20

        case .caption1, .caption2: return 18
        case .caption3, .caption4: return 16

        }
    }

    var defaultColor: Color {
        switch self {

        case .heading1, .heading2, .heading3: return .GrayScale.gray900
        case .heading4, .heading5, .heading6: return .GrayScale.gray800

        case .body1, .body2, .body3, .body4: return .GrayScale.gray700

        case .caption1, .caption2, .caption3, .caption4: return .GrayScale.gray700

        }
    }

}
