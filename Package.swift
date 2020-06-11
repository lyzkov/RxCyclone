// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "RxCyclone",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "RxCyclone",
            targets: ["RxCyclone"]),
    ],
    dependencies: [
        .package(
            name: "RxFeedback",
            url: "https://github.com/NoTests/RxFeedback.swift",
            from: "3.0.0"),
        // Tests
        .package(
            url: "https://github.com/Quick/Quick.git",
            from: "2.0.0"),
        .package(
            url: "https://github.com/Quick/Nimble.git",
            from: "8.0.0"),
    ],
    targets: [
        .target(
            name: "RxCyclone",
            dependencies: ["RxFeedback"]),
        .testTarget(
            name: "RxCycloneTests",
            dependencies: ["RxCyclone", "Quick", "Nimble"]),
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
