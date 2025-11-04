// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ReachuSwiftSDKDemos",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "ReachuDemoKit", targets: ["ReachuDemoKit"]),
        .executable(name: "CartDemo", targets: ["CartDemo"]),
        .executable(name: "ChannelDemo", targets: ["ChannelDemo"]),
        .executable(name: "CategoryDemo", targets: ["CategoryDemo"]),
        .executable(name: "InfoDemo", targets: ["InfoDemo"]),
        .executable(name: "ProductDemo", targets: ["ProductDemo"]),
        .executable(name: "CheckoutDemo", targets: ["CheckoutDemo"]),
        .executable(name: "DiscountDemo", targets: ["DiscountDemo"]),
        .executable(name: "MarketDemo", targets: ["MarketDemo"]),
        .executable(name: "PaymentDemo", targets: ["PaymentDemo"]),
        .executable(name: "Sdk", targets: ["Sdk"])
    ],
    dependencies: [
        // Pin to the first released version of the SDK
        .package(url: "https://github.com/ReachuDevteam/ReachuSwiftSDK.git", exact: "3.0.0")
    ],
    targets: [
        .target(
            name: "ReachuDemoKit",
            dependencies: [],
            path: "ReachuDemoSdk/Utils"
        ),
        .executableTarget(
            name: "CartDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/CartDemo"
        ),
        .executableTarget(
            name: "ChannelDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/ChannelDemo",
            exclude: ["CategoryDemo", "InfoDemo", "ProductDemo"]
        ),
        .executableTarget(
            name: "CategoryDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/ChannelDemo/CategoryDemo"
        ),
        .executableTarget(
            name: "InfoDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/ChannelDemo/InfoDemo"
        ),
        .executableTarget(
            name: "ProductDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/ChannelDemo/ProductDemo"
        ),
        .executableTarget(
            name: "CheckoutDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/CheckoutDemo"
        ),
        .executableTarget(
            name: "DiscountDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/DiscountDemo"
        ),
        .executableTarget(
            name: "MarketDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/MarketDemo"
        ),
        .executableTarget(
            name: "PaymentDemo",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/PaymentDemo"
        ),
        .executableTarget(
            name: "Sdk",
            dependencies: [
                .product(name: "ReachuCore", package: "ReachuSwiftSDK"),
                "ReachuDemoKit"
            ],
            path: "ReachuDemoSdk/Sdk"
        )
    ]
)
