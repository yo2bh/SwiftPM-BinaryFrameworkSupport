// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BinaryFrameworkSupport",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "BinaryFrameworkSupport",
            targets: ["BinaryFrameworkSupport"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BinaryFrameworkSupport",
            dependencies: ["ImageDownloader",
                           "NetworkManager"],
            linkerSettings: [
              .linkedFramework("ImageDownloader"),
              .linkedFramework("NetworkManager"),
          ]
      ),
    ]
)
