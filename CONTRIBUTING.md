# Contribution Guide

This repository is used to publish a Swift package as well as a CocoaPod providing Swift bindings to the Breez Spark SDK's [underlying Rust implementation](https://github.com/breez/spark-sdk). These Swift bindings are generated using [UniFFi](https://github.com/mozilla/uniffi-rs).

## Changing the Breez Spark SDK

Any changes to the Breez Spark SDK and its Swift bindings, must be made via the main [breez/spark-sdk](https://github.com/breez/spark-sdk) repository.

## Swift Package Configuration

The Swift package configuration maintained in the main [breez/spark-sdk](https://github.com/breez/spark-sdk/tree/main/crates/breez-sdk/bindings/langs/swift) repository and automatically copied to this repository by the release CI workflow. Therefore, any changes to the Swift Package configuration must be made in the main repository.

## CocoaPods Configuration 

The CocoaPod configuration is maintained in this repository and changes to it can be made in this repository directly.

The CocoaPod configuration consists of two parts:

- `breez_sdk_sparkFFI.podspec`: A CocoaPod publishing _just_ the Breez Spark SDK's low-level Rust interface. This is not meant to be consumed directly.
- `BreezSdkSpark.podspec`: The main CocoaPod which depends on `breez_sdk_sparkFFI` and publishes high-level Swift bindings to the underlying Rust interface.