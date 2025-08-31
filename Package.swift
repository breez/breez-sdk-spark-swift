// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS("15.0"),
        .iOS(.v13),
    ],
    products: [
        .library(name: "BreezSdkSpark", targets: ["breez_sdk_sparkFFI", "BreezSdkSpark"]),
    ],
    targets: [
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.1.0/breez_sdk_sparkFFI.xcframework.zip", checksum: "051c74f8a5fd024c2e53cd0392261f4a12f3e5ec32970520a099f2d1c8c8698b"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI"]),
    ]
)
