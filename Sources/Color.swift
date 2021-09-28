//
//  Color.swift
//  SemicolonDesign
//
//  Created by 김수완 on 2021/09/09.
//

import UIKit

public extension UIColor {
    struct primary {
        public static var purple = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Purple\(hsb.rawValue)")!
        }
        public static var gray = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Gray\(hsb.rawValue)")!
        }
    }
    struct secondary {
        public static var indigo = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Indigo\(hsb.rawValue)")!
        }
        public static var yellow = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Yellow\(hsb.rawValue)")!
        }
    }
    struct System {
        public static var red = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Red\(hsb.rawValue)")!
        }
        public static var green = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Green\(hsb.rawValue)")!
        }
        public static var blue = { (_ hsb: HSB) -> UIColor in
            return UIColor(named: "Blue\(hsb.rawValue)")!
        }
    }

    enum HSB: Int {
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
