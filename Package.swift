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
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.13.11-dev1/breez_sdk_sparkFFI.xcframework.zip", checksum: "85574d1bf1a4156cf6b144fd0c48b0d8ec2200855cf4b583a37eab6e2ab9e7ef"),
        .target(
            name: "BreezSdkSpark",
            dependencies: [
                "breez_sdk_sparkFFI", .product(name: "BigNumber", package: "Swift-BigInt"),
            ]),
    ]
)
