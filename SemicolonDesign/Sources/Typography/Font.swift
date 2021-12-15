//
//  Font.swift
//  SemicolonDesign
//
//  Created by 김수완 on 2021/12/10.
//

import UIKit

extension UIFont {

    public static func notoSans(type: NotoSansType, size: CGFloat) -> UIFont {
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

    public static let title1 = notoSans(type: .bold, size: 40)
    public static let title2 = notoSans(type: .bold, size: 36)
    public static let title3 = notoSans(type: .bold, size: 32)

    public static let subtitle1 = notoSans(type: .medium, size: 32)
    public static let subtitle2 = notoSans(type: .medium, size: 28)
    public static let subtitle3 = notoSans(type: .medium, size: 24)
    public static let subtitle4 = notoSans(type: .medium, size: 20)

    public static let body1 = notoSans(type: .reqular, size: 16)
    public static let body2 = notoSans(type: .reqular, size: 14)
    public static let body3 = notoSans(type: .reqular, size: 12)

    public static let bottom = notoSans(type: .reqular, size: 14)

    public static let caption = notoSans(type: .reqular, size: 12)

}
