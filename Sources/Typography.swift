//
//  Typography.swift
//  SemicolonDesign
//
//  Created by 김수완 on 2021/12/10.
//

import UIKit

extension UIFont {

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
