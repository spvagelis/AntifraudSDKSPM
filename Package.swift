// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AntifraudSDKSPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AntifraudSDKSPM",
            targets: ["AntifraudSDKSPM"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AntifraudSDKSPM"),
        .testTarget(
            name: "AntifraudSDKSPMTests",
            dependencies: ["AntifraudSDKSPM"]),
        .binaryTarget(name: "AntifraudSDK",
                      url: "https://github.com/spvagelis/AntifraudSDKSPM/releases/download/1.0.0/AntifraudSDK.xcframework.zip",
                      checksum: "47163b71ecc4d817e30260401d8da8233f07d521272ecc8d08bd19124057602c")
    ]
)
