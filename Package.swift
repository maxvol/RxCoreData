// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RxCoreData",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), // .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(
            name: "RxCoreData",
            targets: ["RxCoreData"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", from: "4.0.1")
    ],
    targets: [
        .target(
            name: "RxCoreData",
            dependencies: ["RxSwift", "RxCocoaRuntime", "RxDataSources"],
            path: "." // Sources
        ),
//        .testTarget(
//            name: "RxCoreDataTests",
//            dependencies: ["RxCoreData"],
//            path: "Tests"
//        )
    ]
)
