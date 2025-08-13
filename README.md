## LiquidGlassExample

An iOS SwiftUI sample that showcases Apple's new Glass effect with interactive controls layered over a full-bleed background image. The app demonstrates composing glass containers, sharing a visual style across elements, and animating state with smooth symbol transitions.

### Demo
- Quote text displayed on a glass panel over a scenic background
- Expandable action cluster with Share, Save, and Like glass buttons
- Smooth transitions and symbol replacements when toggling actions

### Features
- **Modern SwiftUI Glass**: Uses `.glassEffect(.clear.interactive())` to render frosted, depth-aware glass surfaces.
- **Glass coherence and transitions**: Shares a visual identity between elements using `.glassEffectID(_, in:)` coordinated by `GlassEffectContainer`.
- **Composable views**: Small, testable SwiftUI views (`QuoteView`, `ActionButtonsView`, `ExpandedActionsView`, `BackgroundView`).
- **Stateful actions**: Like/Save toggles with `.contentTransition(.symbolEffect(.replace))` for fluid icon changes.
- **Asset-driven background**: Uses the bundled `forest` image.

### Requirements
- Xcode 26 or later
- iOS 26.0 or later (Liquid Glass APIs)

If you target earlier iOS versions or older Xcode releases, the Glass-related APIs will not compile.

### Getting Started
1. Open `LiquidGlassExample.xcodeproj` in Xcode.
2. Select an iOS 26 simulator (or a device running iOS 26+).
3. Build and Run.

### How to Use
- Tap the ellipsis button (`…`) to expand additional actions.
- Tap the heart to like/unlike. The icon and tint animate.
- Tap the bookmark to save/unsave.
- Tap Share to trigger a placeholder action (prints to the console). Replace with a real share flow as needed.

### Architecture and Key Files
- `LiquidGlassExample/App/LiquidGlassExampleApp.swift`
  - Entry point. Injects the `quote` into `MainView`.
- `LiquidGlassExample/Scenes/Main/MainView.swift`
  - Composes background, quote, and action buttons in a `ZStack`/`VStack`.
- `LiquidGlassExample/Scenes/Main/Views/BackgroundView.swift`
  - Full-bleed background using the `forest` asset.
- `LiquidGlassExample/Scenes/Main/Views/QuoteView.swift`
  - Centered quote text with a glass surface.
- `LiquidGlassExample/Scenes/Main/Views/ActionButtonsView.swift`
  - Hosts the glass container and the expandable action cluster. Manages local UI state.
- `LiquidGlassExample/Scenes/Main/Views/ExpandedActionsView.swift`
  - The Share/Save/Like buttons with individualized glass IDs and behaviors.
- `LiquidGlassExample/Utilities/Extensions/View+Extension.swift`
  - Reusable view modifiers: `glassCircleButton` and `actionIcon`.

### Notable SwiftUI APIs Used
- `.glassEffect()`: Applies the interactive glass appearance to a view.
- `GlassEffectContainer { ... }`: Establishes a container that coordinates how glass elements blend and transition.
- `.glassEffectID("...", in: namespace)`: Associates related glass elements across states for coherent transitions.
- `.contentTransition(.symbolEffect(.replace))`: Smooth symbol replacement for SFSymbols.
- `@Namespace`: Coordinates shared IDs across view hierarchies.

### Videos