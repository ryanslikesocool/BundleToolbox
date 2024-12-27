// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "BundleToolbox",
	defaultLocalization: "en",
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
