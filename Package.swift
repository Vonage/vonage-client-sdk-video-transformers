// swift-tools-version:5.9
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
            name: "VonageClientSDKVideoTransformers",
            url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/vonage-ios-sdk-transformers-2.31.1.zip",
            checksum: "1945671c7423d0fa262c7402b581ab6f79fc8dfb95a4e7252875dbebc5fc8979"
        )
    ]
)
