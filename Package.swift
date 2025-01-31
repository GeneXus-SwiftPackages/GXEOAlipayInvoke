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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "3.0.0-beta.16"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-beta.16"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "3.0.0-beta.16"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "3.0.0-beta.16"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "3.0.0-beta.16")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXEOAlipayInvoke-3.0.0-beta.16.xcframework.zip",
			checksum: "2a56ae427c31d60c50de98e259a8160171449bac4defb2f3eb6de54514705bcf"
		)
	]
)