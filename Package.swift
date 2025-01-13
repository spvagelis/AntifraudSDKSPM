// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AntifraudSDKSPM",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AntifraudSDKSPM",
            targets: ["AntifraudSDKSPMWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", exact: "3.8.0"),
        .package(url: "https://github.com/spvagelis/sharedSPM.git", exact: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AntifraudSDKSPMWrapper",
            dependencies: [
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
                .product(name: "sharedSPM", package: "sharedSPM"),
                "AntifraudSDK"
            ]
        ),
        .testTarget(
            name: "AntifraudSDKSPMTests",
            dependencies: ["AntifraudSDKSPMWrapper"]),
        .binaryTarget(name: "AntifraudSDK",
                      url: "https://github.com/spvagelis/AntifraudSDKSPM/releases/download/1.0.0/AntifraudSDK.xcframework.zip",
                      checksum: "47163b71ecc4d817e30260401d8da8233f07d521272ecc8d08bd19124057602c")
    ]
)
