// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SemicolonDesign",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SemicolonDesign",
            type: .dynamic,
            targets: ["SemicolonDesign"]),
    ],
    targets: [
        .target(
            name: "SemicolonDesign",
            path: "SemicolonDesign"
        )
    ]
)
