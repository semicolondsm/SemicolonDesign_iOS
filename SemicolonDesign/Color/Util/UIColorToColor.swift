import SwiftUI
import UIKit

extension UIColor {
    var color: Color {
        let colorComponents = self.cgColor.components!
        return Color(
            red:   colorComponents[0],
            green: colorComponents[1],
            blue:  colorComponents[2]
        )
    }
}
