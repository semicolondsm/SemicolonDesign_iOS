// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SemicolonDesign",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SemicolonDesign",
            targets: ["SemicolonDesign"]),
    ],
    targets: [
        .target(
            name: "SemicolonDesign",
            path: "SemicolonDesign",
            resources: [.copy("Resources")]
        )
    ]
)
