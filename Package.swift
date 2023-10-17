// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIViewKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "UIViewKit",
            targets: ["UIViewKit"]
        ),
        .library(name: "UIViewKitPreviewsDemo", targets: ["UIViewKitPreviewsDemo"])
    ],
    targets: [
        .target(
            name: "UIViewKit",
            exclude: [
                "UIViewKit.h",
            ]
        ),
        .target(
            name: "UIViewKitPreviewsDemo",
            dependencies: ["UIViewKit"]
        ),
        .testTarget(
            name: "UIViewKitTests",
            dependencies: ["UIViewKit", "UIViewKitPreviewsDemo"]),
    ]
)
