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
	dependencies: [
		.package(url: "https://github.com/ryanslikesocool/DeclarativeCore.git", from: "0.0.3"),
	],
	targets: [
		.target(
			name: "BundleToolbox",
			dependencies: [
				"DeclarativeCore",
			]
		),
	]
)
