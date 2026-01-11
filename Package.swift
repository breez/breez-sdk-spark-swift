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
        .library(name: "BreezSdkSpark", targets: ["breez_sdk_sparkFFI", "BreezSdkSpark"])
    ],
    dependencies: [
        .package(url: "https://github.com/mkrd/Swift-BigInt.git", from: "2.0.0")
    ],
    targets: [
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.6.7-dev1/breez_sdk_sparkFFI.xcframework.zip", checksum: "06503a78bf09f84778099b2f81a829fc1c9815ce2e70a62dd0a7a87700ae343a"),
        .target(
            name: "BreezSdkSpark",
            dependencies: [
                "breez_sdk_sparkFFI", .product(name: "BigNumber", package: "Swift-BigInt"),
            ]),
    ]
)
