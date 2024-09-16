// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FvcoderCapacitorAudioToggle",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FvcoderCapacitorAudioToggle",
            targets: ["AudioTogglePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "AudioTogglePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/AudioTogglePlugin"),
        .testTarget(
            name: "AudioTogglePluginTests",
            dependencies: ["AudioTogglePlugin"],
            path: "ios/Tests/AudioTogglePluginTests")
    ]
)