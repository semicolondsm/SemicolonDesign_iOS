#if os(macOS)

import SwiftUI
import AppKit

extension NSColor {
    var color: Color {
        let colorComponents = self.cgColor.components!
        return Color(
            red:   colorComponents[0],
            green: colorComponents[1],
            blue:  colorComponents[2]
        )
    }
}

#endif
