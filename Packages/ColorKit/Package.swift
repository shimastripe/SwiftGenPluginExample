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
        .binaryTarget(
            name: "swift-cli-tools",
            url: "https://github.com/shimastripe/SwiftPM-Artifact-Bundle/releases/download/0.2.1/swift-cli-tools.artifactbundle.zip",
            checksum: "f8a9d286b891ba8981ddd9cb1a7ceaa45e9385976b310d49ef62bdc05a704e0c"),
        .plugin(
            name: "SwiftGenPlugin",
            capability: .buildTool(),
            dependencies: ["swift-cli-tools"]),
        .target(
            name: "ColorKit",
            dependencies: [],
            resources: [
                .process("Resources"),
            ],
            plugins: [.plugin(name: "SwiftGenPlugin")]),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"]),
    ]
)
