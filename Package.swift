// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "EdgeApp",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/AndrewBarba/swift-compute-runtime", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "EdgeApp",
            dependencies: [
                .product(name: "Compute", package: "swift-compute-runtime")
            ]),
        .testTarget(
            name: "EdgeAppTests",
            dependencies: ["EdgeApp"]),
    ]
)
