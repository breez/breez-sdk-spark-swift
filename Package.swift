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
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.1.0-rc7/breez_sdk_sparkFFI.xcframework.zip", checksum: "0cca309d657852c3a78a100e8e655ae0531588a55929580b34281590b5b7dcf1"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI"]),
    ]
)
