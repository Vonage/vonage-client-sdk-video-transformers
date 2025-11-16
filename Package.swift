// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VonageClientSDKVideoTransformers",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "VonageClientSDKVideoTransformers",
            targets: ["VonageClientSDKVideoTransformers"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OpenTokTransformers",
            url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/vonage-ios-sdk-transformers-2.31.1.zip",
            checksum: "<INSERT_CHECKSUM_HERE>"
        ),
        .target(
            name: "VonageClientSDKVideoTransformers",
            dependencies: [
                .target(name: "OpenTokTransformers")
            ],
            path: "Sources",
            resources: [
                // If you move `.tflite` files outside the xcframework, place them in Sources/Resources
                // .process("Resources")
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("GLKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("Accelerate"),
                .linkedFramework("Network"),
                .linkedFramework("MetalKit"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
