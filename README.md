# VonageClientSDK Video Transformers 
Due to significant increased size when integrating Vonage Media Library into SDK, the Media Transformers are available via the opt-in Vonage Media Library. This library needs to explicitly be added to the project.

The Vonage Media Library was initially embedded in OpenTok SDK. If your OpenTok SDK version is older than 2.27.4, move directly to Applying a video transformer from the Vonage Media Library and Applying an audio transformer from the Vonage Media Library.

If a call to `OTVideoTransformer initWithName:properties:` or `OTAudioTransformer initWithName:properties:` is made without loading the library, the transformer returned will be null. An exception will be raised with the following error code `0x0A000006 - OTC_MEDIA_TRANSFORMER_OPENTOK_TRANSFORMERS_LIBRARY_NOT_LOADED`.

Swift Package Manager
---------------------
You can add the VonageClientSDK Video Transformers by adding the [https://github.com/vonage/vonage-client-sdk-video-transformers.git](https://github.com/Vonage/vonage-client-sdk-video-transformers.git) repository as a Swift Package Dependency.

To add a package dependency to your Xcode project, select *File* > *Swift Packages* > *Add Package Dependency* and enter its repository URL.

Cocoapods
---------------------
The Vonage Media Library is available as the Pod "VonageClientSDKVideoTransformers", for use with CocoaPods.

Supported platforms
-------------------

iphoneos arm64, iphonesimulator x86_64 and arm64, macosx x86_64 and arm64.

This library is built as a static XC framework for Apple platform.

More Information
-------------

Reference documentation is included at
<https://vonage.github.io/video-docs/video-ios-reference/latest/>.
