Pod::Spec.new do |spec|
  spec.name                   = "breez_sdk_sparkFFI"
  spec.version                = "0.7.18"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Low-level bindings to the Breez Spark SDK Rust API"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc-spark.breez.technology"
  spec.source                 = { :http => "https://github.com/breez/breez-sdk-spark-swift/releases/download/#{spec.version}/breez_sdk_sparkFFI.xcframework.zip" }
  spec.ios.deployment_target  = "13.0"
  spec.vendored_frameworks    = "breez_sdk_sparkFFI.xcframework"
end
