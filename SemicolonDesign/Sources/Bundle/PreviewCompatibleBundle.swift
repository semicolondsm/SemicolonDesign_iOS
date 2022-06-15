import Foundation

extension Bundle {
    static var previewCompatibleBundle: Bundle {
        final class CurrentBundleFinder {}

        let bundleNameIOS = "SemicolonDesign_SemicolonDesign"

        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: CurrentBundleFinder.self).resourceURL,
            Bundle.main.bundleURL,
            Bundle(for: CurrentBundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent(),
            Bundle(for: CurrentBundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent(),
        ]

        for candidate in candidates {
            let bundlePathiOS = candidate?.appendingPathComponent(bundleNameIOS + ".bundle")
            return bundlePathiOS.flatMap(Bundle.init(url:))!
        }

        fatalError("unable to find bundle")
    }
}
