# Video Player Orientation Setup

To make the video player work correctly in landscape, enable all orientations in Xcode:

## 📱 Steps in Xcode:

1. **Open the project** `tv2demo.xcodeproj`

2. **Select the target** `tv2demo` in the project navigator

3. **Go to the "General" tab**

4. **Under "Deployment Info"**, find the "iPhone Orientation" section

5. **Enable ALL orientations**:
   - ✅ Portrait
   - ✅ Landscape Left
   - ✅ Landscape Right
   - ⬜ Upside Down (opcional)

## ✅ Result:

Once configured:
- The app defaults to **Portrait**
- Opening the video player automatically enables **Landscape**
- Rotating the device adapts the video
- Closing the player returns to **Portrait only**

## 🎥 Landscape Highlights:

- ✅ Controls optimized for horizontal
- ✅ More compact titles
- ✅ Adjusted button sizes
- ✅ Full progress bar
- ✅ Immersive fullscreen experience

## 🔧 Verify:

To verify:
1. Build and run the app
2. Navigate to a match
3. Tap "Spill av"
4. Rotate the device to landscape
5. Controls should adapt automatically

---

**Note**: If you don't see orientation options in Xcode, ensure you're editing the **target** (tv2demo), not the root project.
