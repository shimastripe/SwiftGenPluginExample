// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ColorKit",
    products: [
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ColorKit",
            dependencies: []),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"]),
    ]
)
