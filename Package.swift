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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", revision: "63d2b45412060c871123a524ac6d9239b205962f"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", revision: "02fd74284a30115df5e5c22f8b14f44194752676"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", revision: "2b1420b000073afd1f12b87c84c79b5661c4cc0b"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", revision: "195f2873dc3ed7d924d9a72b86f629015eadef71"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", revision: "4ca72491fdc6a8fd7fdab99ed70e324d3a206d3f")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXEOAlipayInvoke-1.0.0-beta+20230609175617.xcframework.zip",
			checksum: "f17ea9679825c659f4bf27932c29566081d20b4664003fd01f8faec3b2bf00fb"
		)
	]
)