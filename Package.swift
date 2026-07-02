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
            url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/vonage-ios-sdk-transformers-2.34.1.zip",
            checksum: "58ab756724820f7c5422d0c75c0ced3f072a579e64653968d9a1c7468877baa3"
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
