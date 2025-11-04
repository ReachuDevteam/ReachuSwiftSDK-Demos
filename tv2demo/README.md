# TV2 Demo App

Demo app for TV2 with a design inspired by their official application.

## 🎨 Structure

```
tv2demo/
├── Theme/
│   └── TV2Theme.swift          # Colors, typography, spacing
├── Models/
│   └── ContentModels.swift     # Data models (Category, ContentItem)
├── Components/
│   ├── CategoryChip.swift      # Category chip
│   └── ContentCard.swift       # Content card with image
├── Views/
│   └── HomeView.swift          # Main view
└── ContentView.swift           # Entry point
```

## 🎯 Implemented Features

- ✅ Custom dark theme matching TV2
- ✅ Horizontal category navigation
- ✅ Content cards with badges (DIREKTE, date)
- ✅ Horizontally scrollable sections
- ✅ Responsive, modern UI

## 🎨 Theme

### Colors
- **Background**: `#1A1625` (dark purple)
- **Surface**: `#2B2438` (mid purple)
- **Primary**: `#7B5FFF` (bright purple)
- **Secondary**: `#E893CF` (pink)
- **Accent**: `#00D9FF` (cyan)

### Categories
- Sporten (All)
- Football
- Norsk
- Tennis
- Handball
- Cycling

## 🚀 Next Steps

1. **Integrate ReachuSDK** — add livestream support
2. **Real images** — use AsyncImage with real URLs
3. **Navigation** — implement detail views
4. **Products** — integrate product system into livestreams
5. **API** — connect to TV2 backend

## 📝 Notes

- Pure SwiftUI app (CoreData removed)
- Optimized for iOS 15+
- Mock data for initial testing

