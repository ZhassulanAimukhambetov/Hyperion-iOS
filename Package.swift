// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "Hyperion-iOS",
    products: [
        .library(
            name: "Hyperion-iOS",
            targets: [
                "Hyperion"
            ]
        )
    ],
    targets: [
        .target(
            name: "Hyperion",
            dependencies: [
                "HyperionCore",
                "AttributesInspector",
                "Measurements",
                "SlowAnimations"
            ],
            path: "Hyperion",
            swiftSettings: [
                .define("HyperionCore", .when(configuration: .debug)),
                .define("AttributesInspector", .when(configuration: .debug)),
                .define("Measurements", .when(configuration: .debug)),
                .define("SlowAnimations", .when(configuration: .debug)),
            ]
        ),
        .binaryTarget(name: "HyperionCore", path: "Frameworks/HyperionCore.xcframework"),
        .binaryTarget(name: "AttributesInspector", path: "Frameworks/AttributesInspector.xcframework"),
        .binaryTarget(name: "Measurements", path: "Frameworks/Measurements.xcframework"),
        .binaryTarget(name: "SlowAnimations", path: "Frameworks/SlowAnimations.xcframework")
    ],
    swiftLanguageModes: [.v5]
)
