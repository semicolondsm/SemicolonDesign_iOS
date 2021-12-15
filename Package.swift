// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SemicolonDesign",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SemicolonDesign",
            targets: ["SemicolonDesign"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/devxoul/Then", from: "2.7.0")
    ],
    targets: [
        .target(
            name: "SemicolonDesign",
            dependencies: [
                "SnapKit",
                "Then"
            ],
            path: "SemicolonDesign",
            resources: [.copy("Resources")]
        )
    ]
)
