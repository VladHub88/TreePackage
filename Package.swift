// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreePackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TreePackage",
            targets: ["TreePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/VladHub88/QueuePackage.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TreePackage",
            dependencies: [
                .product(name: "QueuePackage", package: "QueuePackage"),
            ]),
        .testTarget(
            name: "TreePackageTests",
            dependencies: [
                "TreePackage",
                .product(name: "QueuePackage", package: "QueuePackage")]),
    ]
)
