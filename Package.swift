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
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.3.0-rc2/breez_sdk_sparkFFI.xcframework.zip", checksum: "efe30cf364db4ffc93ecab39802750b012a1a68e78ffc60c9cbdbdbdad18d444"),
        .target(name: "BreezSdkSpark", dependencies: ["breez_sdk_sparkFFI", "BigInt"]),
    ]
)
