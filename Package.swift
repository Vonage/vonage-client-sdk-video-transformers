// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VonageClientSDKVideoTransformers",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "VonageClientSDKVideoTransformers",
            targets: ["VonageClientSDKVideoTransformers"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OpenTokTransformers",
            url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/vonage-ios-sdk-transformers-2.33.0.zip",
            checksum: "ccd83ef0a9d2f9cd3754e465e3c50e0b9f50e74fa5c949378cf2b9ede4a6dfbe"
        ),
        .target(
            name: "VonageClientSDKVideoTransformers",
            dependencies: ["OpenTokTransformers"],
            path: "Sources/VonageClientSDKVideoTransformers",
            resources: [
                .process("Resources/selfie_segmentation.tflite")
            ],
            linkerSettings: [
                .linkedFramework("VideoToolbox"),
                .linkedFramework("Accelerate"),
                .linkedFramework("Network"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
