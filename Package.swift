// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "VonageMLTransformers",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "VonageMLTransformers",
            targets: ["VonageMLTransformers"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "VonageMLTransformers",
            url: "https://d3opqjmqzxf057.cloudfront.net/vonage-mltransformers/pod/vonagemltransformers/release/4.1.60/VonageMLTransformers.xcframework.4.1.60.zip",
            checksum: "7c31086247f733c2bd13e6c5c003ffe2bb3e7851fe2947c82432c98946f71274"
        )
    ]
)
