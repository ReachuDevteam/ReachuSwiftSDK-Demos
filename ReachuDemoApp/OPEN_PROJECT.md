# 🚀 How to Open ReachuDemoApp Correctly

## ⚠️ Common Issue

If you see this error:
```
Couldn't load ReachuSwiftSDK because it is already opened from another project or workspace
Missing package product 'ReachuUI'
```

**Cause:** You have another project open (like tv2demo) that also uses the SDK with a local dependency. Demos must use the SDK via remote URL.

## ✅ Solution

### Option 1: One Project at a Time (Recommended)

**Before opening ReachuDemoApp:**

1. **Cierra Xcode completamente**
2. **Abre SOLO este proyecto:**
   ```bash
   open ReachuDemoApp.xcodeproj
   ```

**If Xcode was already open:**
1. Close all projects (⌘W in each window)
2. Open only ReachuDemoApp

### Option 2: Use a Workspace (to work with multiple demos)

If you need to work with ReachuDemoApp and tv2demo at the same time (both in this repo), create a workspace in `ReachuSwiftSDK-Demos` and add each demo’s `.xcodeproj`. All must reference the SDK by URL (not local path) to avoid conflicts.

## 🔄 If You Still See "Missing Package" Errors

### Reset Package Caches

**Option 1 - In Xcode:**
1. File → Packages → Reset Package Caches
2. Wait for it to finish
3. File → Packages → Resolve Package Versions

**Option 2 - In Terminal:**
```bash
# Clean caches
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf .build

# Open the project
open ReachuDemoApp.xcodeproj
```

### Configure SDK Dependency (Remote URL)

In Xcode:
1. Project Navigator → ReachuDemoApp (project)
2. “Package Dependencies” tab
3. If a local dependency to ReachuSwiftSDK exists, remove it ("-" button)
4. Add the package by URL ("+" button):
   - URL: `https://github.com/ReachuDevteam/ReachuSwiftSDK.git`
   - Version rule:
     - Before first tag: select `branch: main`
     - With a tag published: use `Exact` → `vX.Y.Z`

## 📦 Available SDK Products

Once resolved, you should be able to import:

```swift
import ReachuCore
import ReachuUI
import ReachuDesignSystem
import ReachuLiveShow
import ReachuLiveUI
```

## 🐛 Troubleshooting

### "The package product 'X' is not available"

**Cause:** `Package.swift` does not export that product or there is a syntax error.

**Fix:**
Use the SDK via URL (not local path). If the package doesn’t resolve, check connectivity and ensure the URL and version rule are correct.

### "Dependency cycle detected"

**Cause:** Circular references between targets.

**Fix:** Ensure `Package.swift` has no cycles:
- ReachuCore should not depend on ReachuUI
- ReachuUI can depend on ReachuCore

### Build falla con "No such module"

**Cause:** The module isn’t building.

**Fix:**
1. Product → Clean Build Folder (⌘⇧K)
2. Close Xcode
3. Remove derived data:
   ```bash
   rm -rf ~/Library/Developer/Xcode/DerivedData/*
   ```
4. Open the project again

## 📝 Best Practices

1. Close other projects before opening a new one that uses the same SDK
2. Use a workspace if you need multiple demos open
3. Resolve packages after changing anything in `Package.swift`
4. Clean derived data if things behave oddly

## 🎯 Quick Commands

```bash
# Clean derived data and open the demo project
rm -rf ~/Library/Developer/Xcode/DerivedData/ReachuDemoApp-*
open ReachuDemoApp.xcodeproj
```
