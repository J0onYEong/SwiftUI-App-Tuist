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
            name: "ChoijunPackage",
            targets: ["ChoijunPackage"]
        )
    ],
    dependencies: [
        .package(name: "UIComponents", path: "../UIComponents"),
        .package(url: "https://github.com/realm/SwiftLint", exact: .init(0, 51, 0)),
        .package(url: "https://github.com/hmlongco/Factory", from: .init(2, 2, 0))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.

        // Entry point for ChoijunAppUI Package
        .target(
            name: "ChoijunPackage",
            dependencies: [
                "ChoijunAppUI",
                "Factory"
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
            ]
        ),

        // ---------- Internal targets ----------
        .target(
            name: "ChoijunAppUI",
            dependencies: [
                "UIComponents",
                "ChoijunAppUIDomain",
                "Factory"
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
                "ChoijunAppUIData",
                "Factory"
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
            ]
        ),
        .target(
            name: "ChoijunAppUIData",
            dependencies: [
                "Factory"
            ],
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
            ]
        ),

        // ---------- Test targets ----------

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
