// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobileWrapper",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YandexMapsMobileWrapper",
            targets: ["YandexMapsMobileWrapper"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PanchenkoVV/YandexMapsMobileBinary",
            revision: "642ab11371a6dff4b91441b9b97a64fae950dc4d"
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
