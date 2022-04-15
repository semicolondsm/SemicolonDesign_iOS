import SwiftUI

public extension Color {
    struct System {
        public static var red = { (_ hsb: HSB) -> Color in
            return Color("Red\(hsb.rawValue)", bundle: .sdBundle)
        }
        public static var green = { (_ hsb: HSB) -> Color in
            return Color("Green\(hsb.rawValue)", bundle: .sdBundle)
        }
        public static var blue = { (_ hsb: HSB) -> Color in
            return Color("Blue\(hsb.rawValue)", bundle: .sdBundle)
        }
    }
}
