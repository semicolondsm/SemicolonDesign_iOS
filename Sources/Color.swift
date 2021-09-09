//
//  Color.swift
//  SemicolonDesign
//
//  Created by 김수완 on 2021/09/09.
//

import UIKit

public extension UIColor {
    struct primary {
        static var purple = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Purple\(hsb.rawValue)")!
        }
        static var grey = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Grey\(hsb.rawValue)")!
        }
    }
    struct secondary {
        static var indigo = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Indigo\(hsb.rawValue)")!
        }
        static var yellow = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Yellow\(hsb.rawValue)")!
        }
    }
    struct System {
        static var red = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Red\(hsb.rawValue)")!
        }
        static var green = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Green\(hsb.rawValue)")!
        }
        static var blue = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Blue\(hsb.rawValue)")!
        }
    }

    internal enum HSB: Int {
        case _50 = 50
        case _100 = 100
        case _200 = 200
        case _300 = 300
        case _400 = 400
        case _500 = 500
        case _600 = 600
        case _700 = 700
        case _800 = 800
        case _900 = 900
    }
}
