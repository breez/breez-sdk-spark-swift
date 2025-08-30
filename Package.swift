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
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.1.0-rc5/breez_sdk_sparkFFI.xcframework.zip", checksum: "3d1b5457836f0a0a6b45c6a6aee2b9a86db1136baf360659da38272fc09da1b9"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI"]),
    ]
)
