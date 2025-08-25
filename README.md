# Breez Spark SDK — Swift Bindings

The [Breez Spark SDK](https://github.com/breez/spark-sdk) enables mobile developers to integrate Spark into their apps with a very shallow learning curve. More information can be found here: [breez/spark-sdk](https://github.com/breez/spark-sdk)

This repository maintains the Breez Spark SDK's official [Swift](https://www.swift.org/) bindings.

## Installation

We support integration via the [Swift Package Manager](https://www.swift.org/package-manager/) and via [CocoaPods](https://cocoapods.org/).

### Swift Package Manager

#### Installation via Xcode

Via `File > Add Packages...`, add

```
https://github.com/breez/breez-sdk-spark-swift.git
```

as a package dependency in Xcode.

#### Installation via Swift Package Manifest

Add the following to the dependencies array of your `Package.swift`:

``` swift
.package(url: "https://github.com/breez/breez-sdk-spark-swift.git", from: "0.0.1"),
```

### CocoaPods

Add the Breez Spark SDK to your `Podfile` like so:

``` ruby
target '<YourApp' do
  use_frameworks!

  pod 'BreezSdkSpark'
end
```

## Usage

``` swift
import BreezSdkSpark
```
