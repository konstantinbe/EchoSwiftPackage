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
            url: "https://konstantinbe.s3-eu-central-1.amazonaws.com/Shared/DittoSwift.xcframework.zip",
            checksum: "c8bbbb0b8925f628cc93991d19f5eabbd746284ecda33eccbdad2502b7f36330"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://konstantinbe.s3-eu-central-1.amazonaws.com/Shared/DittoObjC.xcframework.zip",
            checksum: "5f27ba044a8bfae710f8c9072a5c2bef754ee4df1b45f8645210d49253d2b4cb"
        ),
    ]
)
