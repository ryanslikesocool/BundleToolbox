// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "BundleToolbox",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v13),
		.macCatalyst(.v13),
		.macOS(.v10_15),
		.tvOS(.v13),
		.watchOS(.v6),
		.visionOS(.v1),
	],
	products: [
		.library(
			name: "BundleToolbox",
			targets: ["BundleToolbox"]
		),
	],
	targets: [
		.target(
			name: "BundleToolbox"),
	]
)
