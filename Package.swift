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
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.1.9-dev2/breez_sdk_sparkFFI.xcframework.zip", checksum: "c86b5043e45b358c3f1cf6195230bd708be01394f7a43291a51ba5f49c1ebb9f"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI"]),
    ]
)
