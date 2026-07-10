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
        .library(name: "BreezSdkSpark", targets: ["breez_sdk_sparkFFI", "BreezSdkSpark", "PasskeyPRFHelperObjC"])
    ],
    dependencies: [
        .package(url: "https://github.com/mkrd/Swift-BigInt.git", from: "2.4.0")
    ],
    targets: [
        .binaryTarget(name: "breez_sdk_sparkFFI", url: "https://github.com/breez/breez-sdk-spark-swift/releases/download/0.19.0/breez_sdk_sparkFFI.xcframework.zip", checksum: "7f61a34c10a62c3f0a5909dd7488c9cb25f8c110f9f21d9c0eca58c4f5dee0b7"),
        // ObjC helper for passkey PRF types hidden by NS_REFINED_FOR_SWIFT.
        // This target's copy is canonical: `cargo xtask sync-passkey-core`
        // mirrors it verbatim into the Flutter and React Native ios trees.
        // Header lives flat alongside the .m (no `include/`) so the same
        // file works here (publicHeadersPath: ".") and in those pods, which
        // package both files at the pod root.
        .target(
            name: "PasskeyPRFHelperObjC",
            path: "Sources/PasskeyPRFHelperObjC",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("AuthenticationServices"),
            ]
        ),
        .target(
            name: "BreezSdkSpark",
            dependencies: [
                "breez_sdk_sparkFFI",
                "PasskeyPRFHelperObjC",
                .product(name: "BigNumber", package: "Swift-BigInt"),
            ]),
    ]
)
