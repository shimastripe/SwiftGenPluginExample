// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ColorKit",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ColorKit",
            dependencies: [],
            resources: [
                .process("Resources"),
            ]),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"]),
    ]
)
