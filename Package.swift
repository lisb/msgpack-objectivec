// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "msgpack",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "msgpack",
            targets: ["msgpack"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "msgpack",
            path: ".",
            exclude: [
                "readme.md",
                "Package.swift"
            ],
            sources: [
                "MessagePack.h",
                "MessagePackPacker.h",
                "MessagePackPacker.m",
                "MessagePackParser+Streaming.h",
                "MessagePackParser+Streaming.m",
                "MessagePackParser.h",
                "MessagePackParser.m",
                "NSArray+MessagePack.h",
                "NSArray+MessagePack.m",
                "NSData+MessagePack.h",
                "NSData+MessagePack.m",
                "NSDictionary+MessagePack.h",
                "NSDictionary+MessagePack.m",
                "msgpack_src"
            ],
            publicHeadersPath: "include",
            cxxSettings: [
                .headerSearchPath("include"),
            ]
        )
    ],
    cxxLanguageStandard: .cxx17
)
