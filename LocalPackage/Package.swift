// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalPackage",
    platforms: [.iOS("14.0"), .macOS("10.15.0")],
    products: [
        .library(
            name: "LocalPackage",
            targets: ["LocalPackage"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LocalPackage",
            dependencies: []
        ),
    ]
)
