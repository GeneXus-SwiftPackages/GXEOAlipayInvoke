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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", revision: "e4bf5f323ad1a868f5204b2c6f2b23df0307d483"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", revision: "8d33dc7510f9908c8b1814a960f6afdd974e9c43"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", revision: "f4a22c776ac2bbff5a5c41117572cf5cb809324e"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", revision: "f0c69c8ba0244d9f0b9fd6192dcec332d743de93"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", revision: "fc34bf3c60650289f893206e9209c25b6978bba9")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXEOAlipayInvoke-1.0.0-beta+20230610052334.xcframework.zip",
			checksum: "89a87d1114423b45cd3c9992f8686819564f7089e1dcef482641440ba757b2f3"
		)
	]
)