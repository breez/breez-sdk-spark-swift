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
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.4.0")
    ],
    targets: [
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.3.0-rc1/breez_sdk_sparkFFI.xcframework.zip", checksum: "618a70970e668f76e82e0577c999b127bfe1425dad24cc665d1ca1c27f6096e1"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI", "BigInt"]),
    ]
)
