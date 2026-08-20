// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VonageClientSDKVideoTransformers",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "VonageClientSDKVideoTransformers",
            targets: ["VonageClientSDKVideoTransformers"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OpenTokTransformers",
            url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/vonage-ios-sdk-transformers-2.35.1.zip",
            checksum: "c1f220bb65cb3fe94f778a2d8fe95a7480a17b4de02673eb297c689deec3c150"
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
