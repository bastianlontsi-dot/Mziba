# Mziba Color Palette - Quick Start Guide

## Overview

The Mziba application now has a standardized color palette for visual identity. This guide will help you integrate the colors into your code.

## Color Palette

The palette consists of 10 colors forming a gradient from deep purple to light cyan:

```
#7400B8 → #6930C3 → #5E60CE → #5390D9 → #4EA8DE → 
#48BFE3 → #56CFE1 → #64DFDF → #72EFDD → #80FFDB
```

## Quick Start

### 1. Import the Colors

```dart
import 'package:mziba/config/app_colors.dart';
```

### 2. Use Main Brand Colors

```dart
// Primary brand color (deep purple)
Container(
  color: AppColors.primaryColor,
)

// Secondary color (sky blue)
Container(
  color: AppColors.secondaryColor,
)

// Accent color (turquoise)
Container(
  color: AppColors.accentColor,
)
```

### 3. Use Individual Palette Colors

```dart
// Access any of the 10 colors
Container(
  color: AppColors.primary1,  // #7400B8 (darkest)
)

Container(
  color: AppColors.primary5,  // #4EA8DE (middle)
)

Container(
  color: AppColors.primary10, // #80FFDB (lightest)
)
```

### 4. Use Gradients

```dart
// Quick gradient (3 colors)
Container(
  decoration: BoxDecoration(
    gradient: AppColors.createGradient(),
  ),
)

// Full gradient (all 10 colors)
Container(
  decoration: BoxDecoration(
    gradient: AppColors.createGradient(
      colors: AppColors.fullGradient,
    ),
  ),
)

// Vertical gradient
Container(
  decoration: BoxDecoration(
    gradient: AppColors.createGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
)
```

### 5. Use in Theme

```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: AppColors.lightColorScheme,
    useMaterial3: true,
  ),
  darkTheme: ThemeData(
    colorScheme: AppColors.darkColorScheme,
    useMaterial3: true,
  ),
)
```

## Files Reference

- **`lib/config/app_colors.dart`** - Main color definitions
- **`lib/config/color_palette_demo.dart`** - Visual demo screen
- **`lib/config/color_usage_examples.dart`** - Code examples
- **`COLOR_PALETTE.md`** - Complete documentation

## Best Practices

1. **Always use AppColors** instead of hardcoded colors
2. **Use primaryColor** for main UI elements (app bars, primary buttons)
3. **Use secondaryColor** for secondary actions and complementary elements
4. **Use accentColor** for highlights and active states
5. **Use gradients** to create visual interest and depth

## Color Selection Guide

| Purpose | Recommended Color | Hex Code |
|---------|------------------|----------|
| Primary brand elements | primaryColor | #7400B8 |
| Secondary actions | secondaryColor | #5390D9 |
| Highlights & accents | accentColor | #56CFE1 |
| Dark backgrounds | primary1-primary3 | #7400B8-#5E60CE |
| Light backgrounds | primary8-primary10 | #64DFDF-#80FFDB |
| Status: Active/Success | primary10 | #80FFDB |
| Status: Pending/Info | primary5 | #4EA8DE |
| Status: Important | primary1 | #7400B8 |

## Examples

See `lib/config/color_usage_examples.dart` for complete working examples including:
- Buttons with brand colors
- Gradient containers
- Themed app bars
- Status indicators
- Custom gradients
- Theme integration

## Demo Screen

To see all colors in action, use the demo screen:

```dart
import 'package:mziba/config/color_palette_demo.dart';

// Navigate to
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ColorPaletteDemo()),
);
```

## Support

For questions or issues with the color palette, refer to:
- Main documentation: `COLOR_PALETTE.md`
- Code examples: `lib/config/color_usage_examples.dart`
- Visual reference: `lib/config/color_palette_demo.dart`
