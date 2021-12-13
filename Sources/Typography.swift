//
//  Typography.swift
//  SemicolonDesign
//
//  Created by 김수완 on 2021/12/10.
//

import UIKit

extension UIFont {

    static func notoSans(type: NotoSansType, size: CGFloat) -> UIFont {
        guard let font = UIFont(name: type.name, size: size) else {
            if type == .bold { return .boldSystemFont(ofSize: size) }
            else { return .systemFont(ofSize: size) }
        }
        return font
    }

    public enum NotoSansType {
        case bold
        case medium
        case reqular

        var name: String {
            switch self {
            case .bold:
                return "NotoSansKR-Bold"
            case .medium:
                return "NotoSansKR-Medium"
            case .reqular:
                return "NotoSansKR-Reqular"
            }
        }
    }

}

extension UIFont {

    static let title1 = notoSans(type: .bold, size: 40)
    static let title2 = notoSans(type: .bold, size: 36)
    static let title3 = notoSans(type: .bold, size: 32)

    static let subtitle1 = notoSans(type: .medium, size: 32)
    static let subtitle2 = notoSans(type: .medium, size: 28)
    static let subtitle3 = notoSans(type: .medium, size: 24)
    static let subtitle4 = notoSans(type: .medium, size: 20)

    static let body1 = notoSans(type: .reqular, size: 16)
    static let body2 = notoSans(type: .reqular, size: 14)
    static let body3 = notoSans(type: .reqular, size: 12)

    static let bottom = notoSans(type: .reqular, size: 14)

    static let caption = notoSans(type: .reqular, size: 12)

}
