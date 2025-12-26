# Mziba Color Palette

This document describes the color palette used throughout the Mziba application.

## Color Palette

The application uses a gradient color palette that transitions from deep purple through blue to cyan:

### Primary Colors
- **Primary**: `#5E60CE` - Main brand color (Purple-Blue)
- **Primary Dark**: `#7400B8` - Darker accent (Deep Purple)
- **Primary Light**: `#80FFDB` - Lighter accent (Very Light Cyan)

### Extended Palette

#### Purple Shades
- **Deep Purple**: `#7400B8`
- **Medium Purple**: `#6930C3`
- **Light Purple**: `#5E60CE` (Primary)

#### Blue Shades
- **Dark Blue**: `#5390D9`
- **Medium Blue**: `#4EA8DE`
- **Light Blue**: `#48BFE3`

#### Cyan Shades
- **Dark Cyan**: `#56CFE1`
- **Medium Cyan**: `#64DFDF`
- **Light Cyan**: `#72EFDD`
- **Very Light Cyan**: `#80FFDB`

## Usage

### Android
Colors are defined in `android/app/src/main/res/values/colors.xml`

The primary color is used for:
- Notification color (AndroidManifest.xml)
- App theme accents
- UI components

### Web
Colors are configured in `flutter_launcher_icons.yaml`:
- Background color: `#5E60CE`
- Theme color: `#5E60CE`

### Native Splash Screen
The splash screen uses white (`#FFFFFF`) as a neutral background to ensure the app icon is clearly visible during launch.

## Color Theory

This palette follows a harmonious gradient from purple to cyan, creating a modern and vibrant visual identity. The colors work well together and can be used for:
- Gradients and transitions
- Different UI states (primary, secondary, tertiary)
- Data visualization
- Accent colors
- Status indicators

## Recommendations

When using these colors:
1. Use the primary color (`#5E60CE`) for main actions and important UI elements
2. Use darker shades (`#7400B8`, `#6930C3`) for emphasis and contrast
3. Use lighter shades (`#72EFDD`, `#80FFDB`) for subtle backgrounds and highlights
4. Ensure sufficient contrast with text (use white text on darker colors, dark text on lighter colors)
5. Consider accessibility guidelines (WCAG) when combining colors
