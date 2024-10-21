// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobileWrapper",
    products: [
        .library(
            name: "YandexMapsMobileWrapper",
            targets: ["YandexMapsMobileWrapper"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/misha8414/YandexMapsMobileBinary",
            revision: "077a261b7c9d736657554bd15bb4a7da31a43a1f"
        )
    ],
    targets: [
        .target(
            name: "YandexMapsMobileWrapper",
            dependencies: [
                "YandexMapsMobileBinary"
            ]),
        .testTarget(
            name: "YandexMapsMobileWrapperTests",
            dependencies: ["YandexMapsMobileWrapper"]),
    ]
)
