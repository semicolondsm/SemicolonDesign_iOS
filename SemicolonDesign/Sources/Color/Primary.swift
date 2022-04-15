import SwiftUI

public extension Color {
    struct Primary {
        public static var purple = { (_ hsb: HSB) -> Color in
            return Color("Purple\(hsb.rawValue)", bundle: .frameworkBundle)
        }
        public static var gray = { (_ hsb: HSB) -> Color in
            return Color("Gray\(hsb.rawValue)", bundle: .frameworkBundle)
        }
    }
}
