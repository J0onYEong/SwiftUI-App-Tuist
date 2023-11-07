import ProjectDescription

private let bundleId: String = "io.tuist.TuistTemp"
private let version: String = "0.0.1"
private let bundleVersion: String = "1"
private let iOSTargetVersion: String = "16.0"

// 아래의 Targets는 Tuist파일에 존재한다.
private let basePath: String = "Targets/ChoijunApp"
private let packagePath: String = "Packages"
private let appName: String = "ChoijunApp"

let project = Project(name: "\(appName)",
                      packages: [
                        .package(path: "\(packagePath)/ChoijunAppUI"),
                      ],
                      settings: Settings.settings(configurations: makeConfiguration()),
                      targets: [
                        Target(
                            name: "Target1",
                            platform: .iOS,
                            product: .app,
                            bundleId: bundleId,
                            deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: .iphone),
                            infoPlist: makeInfoPlist(),
                            sources: ["\(basePath)/Sources/**"],
                            resources: ["\(basePath)/Resources/**"],
                            dependencies: [
                                .package(product: "ChoijunAppUI")
                            ],
                            settings: baseSettings()
                        ),
                      ],
                      additionalFiles: [
                            "README.md",
                      ])
/// Create extended plist for iOS
/// - Returns: InfoPlist
private func makeInfoPlist(merging other: [String: Plist.Value] = [:]) -> InfoPlist {
    var extendedPlist: [String: Plist.Value] = [
        "UIApplicationSceneManifest": ["UIApplicationSupportsMultipleScenes": true],
        "UILaunchScreen": [],
        "UISupportedInterfaceOrientations":
            [
                "UIInterfaceOrientationPortrait",
            ],
        "CFBundleShortVersionString": "\(version)",
        "CFBundleVersion": "\(bundleVersion)",
        "CFBundleDisplayName": "$(APP_DISPLAY_NAME)",
    ]
    
    other.forEach { (key: String, value: Plist.Value) in
        extendedPlist[key] = value
    }
    
    return InfoPlist.extendingDefault(with: extendedPlist)
}

/// Create dev and release configuration
/// - Returns: Configuration Tuple
/// Configuration을 추가하고 싶다면 해당 함수를 수정하여 추가할 수 있다.
private func makeConfiguration() -> [Configuration] {
    let debug: Configuration = Configuration.debug(name: "Debug", xcconfig: "Configs/Debug.xcconfig")
    let release: Configuration = Configuration.release(name: "Release", xcconfig: "Configs/Release.xcconfig")
    
    return [debug, release]
}

/// Create baseSettings
/// - Returns: Settings
private func baseSettings() -> Settings{
    var settings = SettingsDictionary()
    
    return Settings.settings(base: settings,
                             configurations: [],
                             defaultSettings: .recommended)
}
