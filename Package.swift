// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DigitEntryView",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DigitEntryView",
            targets: ["DigitEntryView"]),
    ],
    targets: [
        .target(
            name: "DigitEntryView",
            dependencies: []),
        .testTarget(
            name: "DigitEntryViewTests",
            dependencies: ["DigitEntryView"]),
    ]
)
