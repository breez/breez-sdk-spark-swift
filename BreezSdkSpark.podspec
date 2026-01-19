Pod::Spec.new do |spec|
  spec.name                   = "BreezSdkSpark"
  spec.version                = "0.7.8"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Swift bindings to the Breez Spark SDK"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc-spark.breez.technology"
  spec.source                 = { :git => 'https://github.com/breez/breez-sdk-spark-swift.git', :tag => spec.version }
  spec.ios.deployment_target  = "13.0"
  spec.source_files           = [
    "Sources/BreezSdkSpark/*.swift", 
    "Sources/BreezSdkSpark/**/*.swift"
  ]
  spec.static_framework       = true

  spec.dependency "breez_sdk_sparkFFI", "= #{spec.version}"
  spec.dependency "Swift-BigInt", "~> 2.0"
end
