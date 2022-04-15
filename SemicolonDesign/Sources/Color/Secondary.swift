import SwiftUI

public extension Color {
    struct Secondary {
        public static var indigo = { (_ hsb: HSB) -> Color in
            return Color("Indigo\(hsb.rawValue)", bundle: .sdBundle)
        }
        public static var yellow = { (_ hsb: HSB) -> Color in
            return Color("Yellow\(hsb.rawValue)", bundle: .sdBundle)
        }
    }
}
