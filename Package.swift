// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Refreshable",
	platforms: [
		.iOS(.v13)
	],
    products: [
        .library(
            name: "Refreshable",
            targets: ["Refreshable"]
		)
    ],
    dependencies: [
		.package(
			name: "swiftui-introspect",
			url: "https://github.com/gzqyl/swiftui-introspect",
			.branch("master")
		)
    ],
    targets: [
        .target(
            name: "Refreshable",
            dependencies: ["SwiftUIIntrospect"],
			path: "Refreshable"
		)
    ]
)
