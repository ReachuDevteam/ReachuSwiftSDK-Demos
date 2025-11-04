# Install ReachuSDK in tv2demo

## Method 1: Remote Dependency (Recommended)

### Steps in Xcode:

1. **Open the tv2demo project**
   ```bash
   open tv2demo.xcodeproj
   ```

2. **Add Package by URL:**
   - File → Add Packages…
   - URL: `https://github.com/ReachuDevteam/ReachuSwiftSDK.git`
   - Version rule:
     - Before first tag: `branch: main`
     - With a tag published: `Exact vX.Y.Z`

3. **Select Products:**
   Pick the modules you need:
   - ✅ `ReachuCore` (required)
   - ✅ `ReachuDesignSystem` (required)
   - ✅ `ReachuUI` (required)
   - ✅ `ReachuLiveUI` (for livestreaming)
   - ✅ `ReachuLiveShow` (for livestreaming)

4. **Build**
   - ⌘B to build
   - It should compile without errors

---

## Method 2: Terminal (Quick)

Run this command from the project folder:

```bash
# This opens Xcode with the project
xed tv2demo.xcodeproj
```

Then follow Method 1 steps.

---

## Verify Installation

In any Swift file (e.g., `ContentView.swift`):

```swift
import ReachuCore
import ReachuDesignSystem
import ReachuUI
import ReachuLiveUI

struct ContentView: View {
    var body: some View {
        Text("SDK installed correctly")
    }
}
```

If there are no compile errors, it’s installed! ✅

---

## Use the SDK

### Basic example:

```swift
import SwiftUI
import ReachuUI
import ReachuCore

struct ProductView: View {
    let product = Product(
        id: 1,
        title: "Product",
        price: Price(amount: 99.99, currency_code: "USD")
    )
    
    var body: some View {
        RProductCard(product: product)
    }
}
```

### LiveShow:

```swift
import ReachuLiveUI
import ReachuLiveShow

struct LiveView: View {
    @StateObject var liveShowManager = LiveShowManager.shared
    
    var body: some View {
        if let stream = liveShowManager.activeStream {
            RLiveShowFullScreenOverlay(stream: stream)
        }
    }
}
```

---

## Troubleshooting

### Error: "No such module 'ReachuCore'"

Fix:
1. Ensure the remote package is added
2. Clean build folder: ⇧⌘K
3. Rebuild: ⌘B

### Error: "Cannot find 'Product' in scope"

Fix: Import the correct module:
```swift
import ReachuCore  // Para Product, Cart, etc.
```

### Very slow build

Fix: The first build can be slow as SPM compiles the SDK. Subsequent builds will be faster due to caching.

---

## Next Steps

Once installed:

1. ✅ Replace mock data with SDK data
2. ✅ Integrate RLiveShowFullScreenOverlay
3. ✅ Add RProductCard to views
4. ✅ Implement checkout with RCheckoutOverlay
5. ✅ Configure TV2 custom theme

---

**Full Documentation:**
- SDK: https://github.com/ReachuDevteam/ReachuSwiftSDK
- Demos: this repository
