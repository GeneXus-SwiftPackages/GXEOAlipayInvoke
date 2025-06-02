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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "3.2.0-rc.9"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-rc.9"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "3.2.0-rc.9"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "3.2.0-rc.9"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "3.2.0-rc.9")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXEOAlipayInvoke-3.2.0-rc.9.xcframework.zip",
			checksum: "e53c720bafcca030779abed1aa4c7572698ce9387e4e01641fbd158700dff4e8"
		)
	]
)