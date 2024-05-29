// swift-tools-version: 5.7
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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.4.31"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.4.31"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "1.4.31"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.4.31"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "1.4.31")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXEOAlipayInvoke-1.4.31.xcframework.zip",
			checksum: "9ce124fd044230e862e8fd9427e5f0f9fa76cec9643b91a0ac611fbf9d9ef2a9"
		)
	]
)