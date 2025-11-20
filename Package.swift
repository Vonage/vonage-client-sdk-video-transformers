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
            url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/vonage-ios-sdk-transformers-2.32.0.zip",
            checksum: "c24ed9e6812ca3afc3829dfbcf19b78a9ebf92e35e40b67c568548627d975cdd"
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
