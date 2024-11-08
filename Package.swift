// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXEOAlipayInvoke",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXEOAlipayInvoke",
			targets: ["GXEOAlipayInvokeWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "2.0.17"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.17"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "2.0.17"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "2.0.17"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "2.0.17")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXEOAlipayInvoke-2.0.17.xcframework.zip",
			checksum: "b87cb7ba9dbbbb166e34ee003a5be158e5eeee34fa39a6d4261e21d0dc9a3bfe"
		)
	]
)