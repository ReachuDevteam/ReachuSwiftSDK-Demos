# 📁 Configuration Files

## 🎯 For Developers

Copy these configuration files into your project to customize the SDK.

### 📋 Available Files

| File | Description | Usage |
|------|-------------|-------|
| `reachu-config-example.json` | Main configuration (Dark Streaming Theme) | Copy as `reachu-config.json` |
| `reachu-config-dark-streaming.json` | Dark theme for streaming | For streaming apps |
| `reachu-config-automatic.json` | Automatic theme (iOS standard) | For general apps |
| `reachu-config-starter.json` | Minimal configuration | Quick start |

### 🚀 Quick Setup

```bash
# 1. Copy the preferred file to your project
cp reachu-config-example.json reachu-config.json

# 2. In your app, load the configuration
try ConfigurationLoader.loadConfiguration()
```

### ⚡ Quick Theme Switching

```swift
// In your AppDelegate or main
try ConfigurationLoader.loadFromJSON(fileName: "reachu-config-dark-streaming")
// O
try ConfigurationLoader.loadFromJSON(fileName: "reachu-config-automatic")
```

### 🔧 Environment Variables (Xcode)

1. Edit Scheme → Run → Environment Variables
2. Add: `REACHU_CONFIG_TYPE` = `dark-streaming`
3. Run → Automatically uses the proper theme

---

## 📖 Full Documentation

- `CONFIG_SWITCHING_GUIDE.md` — Full switching guide
- SDK root `README.md` — General documentation

---

## 🎨 Visual Comparison

### 🌙 Dark Streaming
- Background: **#000000** (pure black)
- Surface: **#0D0D0F** (near black)
- Primary: **#0066FF** (vibrant blue)
- Ideal for: streaming, gaming, media apps

### 🌞 Automatic
- Background: System (Light/Dark adaptive)
- Surface: **#1C1C1E** (dark) / **#FFFFFF** (light)
- Primary: **#0A84FF** (iOS standard)
- Ideal for: general apps, ecommerce

Pick the one that best fits your app. 🎯
