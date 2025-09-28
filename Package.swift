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
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.2.2-dev3/breez_sdk_sparkFFI.xcframework.zip", checksum: "5e7a6b342bbf15ebd92041a88c4987343ccca67717faa85ebd1cf5205931aad0"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI"]),
    ]
)
