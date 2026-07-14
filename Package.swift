// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXEOAlipayInvoke",
	platforms: [.iOS("15.0")],
	products: [
		.library(
			name: "GXEOAlipayInvoke",
			targets: ["GXEOAlipayInvokeWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "4.2.0-beta.30"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-beta.30"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "4.2.0-beta.30"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "4.2.0-beta.30"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "4.2.0-beta.30")
	],
	targets: [
		.target(name: "GXEOAlipayInvokeWrapper",
				dependencies: [
					"GXEOAlipayInvoke",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXDataLayer", package: "GXDataLayer", condition: .when(platforms: [.iOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.iOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXEOAlipayInvoke",
			url: "https://pkgs.genexus.dev/iOS/beta/GXEOAlipayInvoke-4.2.0-beta.30.xcframework.zip",
			checksum: "a3afbb48e668195d02554388ba4d2776fe8bc43879d4850363397ddac4a97a9b"
		)
	]
)