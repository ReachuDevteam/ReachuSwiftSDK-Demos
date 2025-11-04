# 🔧 SDK Dependency (Remote URL) for ReachuDemoApp

## Goal

Configure the SDK dependency via remote URL to avoid conflicts and coupling to the SDK repo.

## Steps (Xcode)

1. Open the project:
   ```bash
   open ReachuDemoApp.xcodeproj
   ```
2. Project Navigator → ReachuDemoApp (project) → “Package Dependencies” tab.
3. If a local dependency to ReachuSwiftSDK exists, remove it ("-" button).
4. Add the package by URL ("+" button):
   - URL: `https://github.com/ReachuDevteam/ReachuSwiftSDK.git`
   - Version rule:
     - Before first tag: `branch: main`
     - With a tag published: `Exact vX.Y.Z`
5. Select needed products: `ReachuCore`, `ReachuUI`, `ReachuDesignSystem`, `ReachuLiveShow`, `ReachuLiveUI`.

## Troubleshooting

- Reset caches: File → Packages → Reset Package Caches, then Resolve Package Versions.
- Clean build: Product → Clean Build Folder (⌘⇧K) and build again.
- Check GitHub connectivity and version rule.

## Notes

- This repo (demos) should depend on the SDK via remote URL, not a local path.
- When you publish a tag (e.g., `v1.0.0`), switch to rule `Exact` to pin the demo to that version.
