// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChoijunAppUI",
    defaultLocalization: "en",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ChoijunAppUI",
            targets: ["ChoijunAppUI"]
        )
    ],
    dependencies: [
        .package(name: "UIComponents", path: "../UIComponents")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Source 내부의 첫번째 디렉토리가 바로 타깃이다.
        .target(
            name: "ChoijunAppUI",
            dependencies: ["UIComponents"],
            resources: [
                .process("Resources/lotties/thinking_human_lottie.json"),
                .process("Resources/lotties/astronaut.json")
            ]
        ),
        .testTarget(
            name: "ChoijunAppUITests",
            dependencies: ["ChoijunAppUI"]
        )
    ]
)
