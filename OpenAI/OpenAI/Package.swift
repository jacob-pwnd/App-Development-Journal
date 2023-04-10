//
//  Package.swift
//  OpenAI
//
//  Created by user232149 on 4/7/23.
//

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YourAppName",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "YourAppName", targets: ["YourAppName"]),
    ],
    dependencies: [
        .package(url: "https://github.com/OpenAI/OpenAI-Swift", from: "1.0.0"),
        .package(url: "https://github.com/V8tr/AsyncImage", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "YourAppName",
            dependencies: [
                "OpenAI",
                "AsyncImage",
            ]
        ),
        .testTarget(
            name: "YourAppNameTests",
            dependencies: ["YourAppName"]
        ),
    ]
)
