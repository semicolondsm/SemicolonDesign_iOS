import Foundation

extension Bundle {
    private class SDBundle {}
    
    static var frameworkBundle: Bundle {
        return Bundle(for: SDBundle.self)
    }
}
