// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-AppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunAppLovin", targets: ["AdfurikunAppLovin"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/Fuji-ren/Adfurikun-SPM-Core.git",
            from: "4.4.0.0"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.5.1"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunAppLovin",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
