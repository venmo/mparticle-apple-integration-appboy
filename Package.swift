// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mParticle-Appboy",
    platforms: [ .iOS(.v9), .tvOS(.v9) ],
    products: [
        .library(
            name: "mParticle-Appboy",
            targets: ["mParticle-Appboy"]),
    ],
    dependencies: [
      .package(name: "mParticle-Apple-SDK",
               url: "https://github.com/mParticle/mparticle-apple-sdk",
               .upToNextMajor(from: "8.0.0")),
      .package(name: "Appboy-iOS-SDK",
               url: "https://github.com/Appboy/appboy-ios-sdk",
               .upToNextMajor(from: "3.27.0")),
    ],
    targets: [
        .target(
            name: "mParticle-Appboy",
            dependencies: [
                "mParticle-Apple-SDK",
                "Appboy-iOS-SDK"
            ],
            path: "mParticle-Appboy",
            publicHeadersPath: "."
        )
    ],
    cxxLanguageStandard: .cxx11
)
