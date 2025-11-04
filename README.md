# ReachuSwiftSDK-Demos

This repository hosts standalone demos for the SDK, including:
- Console demos (SPM) under `ReachuDemoSdk/*`
- Sample Xcode apps (`ReachuDemoApp`, `tv2demo`, `Vg`, `Viaplay`)

## SDK Dependency
By default this repo’s `Package.swift` points to the `main` branch of:

```
https://github.com/ReachuDevteam/ReachuSwiftSDK.git
```

When you publish a tag (e.g., `v1.0.0`), switch the dependency to:

```swift
.package(url: "https://github.com/ReachuDevteam/ReachuSwiftSDK.git", exact: "1.0.0")
```

## Console Demos (SPM)

- Build all: `swift build`
- Run one (examples):
  - `swift run CartDemo`
  - `swift run MarketDemo`
  - `swift run Sdk`

Binaries are located under `.build/debug/` or `.build/release/` depending on configuration.

## Xcode Demos (iOS apps)
For each project (`ReachuDemoApp`, `tv2demo`, `Vg`, `Viaplay`):
1. Open the `.xcodeproj`.
2. In Package Dependencies, remove any local path dependency to the SDK.
3. Add the SDK by URL `https://github.com/ReachuDevteam/ReachuSwiftSDK.git` and pin to the desired version (Exact when a tag exists).
4. Build the corresponding scheme.

> Tip: until the first tag exists you can use `branch: main` in Xcode.

## Structure
- `ReachuDemoSdk/` — Console demos and utilities (`ReachuDemoKit`).
- `ReachuDemoApp/`, `tv2demo/`, `Vg/`, `Viaplay/` — Xcode projects.
