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
