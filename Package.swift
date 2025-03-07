// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwiftWrapper"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .target(
            name: "DittoSwiftWrapper",
            dependencies: [
                .target(name: "DittoSwift"),
                .target(name: "DittoObjC"),
            ]
        ),
        .binaryTarget(
            name: "DittoSwift",
            url: "https://konstantinbe.s3-eu-central-1.amazonaws.com/Shared/DittoSwift-11.xcframework.zip",
            checksum: "267fad913bea446a8cc4516804f5dc91cdbeab85927fc0f9010a0140a6364f56"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://konstantinbe.s3-eu-central-1.amazonaws.com/Shared/DittoObjC-11.xcframework.zip",
            checksum: "b0a4ea23a39b34b7874ad2b56c305f3d3a5cbd4d6ae6a2acae878fefe1bc6ce2"
        ),
    ]
)
