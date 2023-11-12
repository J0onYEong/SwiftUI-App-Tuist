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
        .package(name: "UIComponents", path: "../UIComponents"),
        .package(url: "https://github.com/realm/SwiftLint", exact: .init(0, 51, 0))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Source 내부의 첫번째 디렉토리가 바로 타깃이다.
        .target(
            name: "ChoijunAppUI",
            dependencies: [
                "UIComponents",
                "ChoijunAppUIDomain"
            ],
            resources: [
                .process("Resources/lotties/thinking_human_lottie.json"),
                .process("Resources/lotties/astronaut.json")
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
            ]
        ),
        .target(
            name: "ChoijunAppUIDomain",
            dependencies: [
                "ChoijunAppUIData"
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
            ]
        ),
        .target(
            name: "ChoijunAppUIData",
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
            ]
        ),
        .testTarget(
            name: "ChoijunAppUITests",
            dependencies: ["ChoijunAppUI"]
        ),
        .testTarget(
            name: "ChoijunAppUIDomainTests",
            dependencies: ["ChoijunAppUIDomain"]
        ),
        .testTarget(
            name: "ChoijunAppUIDataTests",
            dependencies: ["ChoijunAppUIData"]
        )
    ]
)
