# Mziba Visual Identity - Color Palette

## Official Color Palette

This document describes the official color palette for the Mziba application visual identity.

### Primary Colors

The application uses a gradient of 10 colors ranging from deep purple to light cyan:

1. **#7400B8** - Deep Purple (Primary)
2. **#6930C3** - Royal Purple
3. **#5E60CE** - Purple Blue
4. **#5390D9** - Sky Blue (Secondary)
5. **#4EA8DE** - Light Blue
6. **#48BFE3** - Cyan Blue
7. **#56CFE1** - Turquoise (Accent)
8. **#64DFDF** - Light Turquoise
9. **#72EFDD** - Mint Cyan
10. **#80FFDB** - Pale Cyan

### Usage Guidelines

#### Main Brand Colors

- **Primary Color (#7400B8)**: Use for main UI elements like app bars, primary buttons, and key branding elements
- **Secondary Color (#5390D9)**: Use for secondary actions, complementary elements, and supporting UI components
- **Accent Color (#56CFE1)**: Use for highlights, active states, and drawing attention to important elements

#### Gradients

The palette is designed to create smooth gradients across the color spectrum:

```dart
// Quick gradient (3 colors)
primaryGradient: [#7400B8, #4EA8DE, #80FFDB]

// Full gradient (all 10 colors)
fullGradient: [#7400B8, #6930C3, #5E60CE, #5390D9, #4EA8DE, #48BFE3, #56CFE1, #64DFDF, #72EFDD, #80FFDB]
```

### Implementation

The color palette is implemented in `/lib/config/app_colors.dart` and can be used throughout the application:

```dart
import 'package:mziba/config/app_colors.dart';

// Using individual colors
Container(
  color: AppColors.primaryColor,
  // or
  color: AppColors.primary1,
)

// Using gradients
Container(
  decoration: BoxDecoration(
    gradient: AppColors.createGradient(),
  ),
)

// Using theme colors
Theme.of(context).colorScheme.primary  // Will use AppColors.primaryColor
```

### Color Accessibility

When using these colors, ensure proper contrast ratios:
- Light text on dark colors (primary1-primary5)
- Dark text on light colors (primary8-primary10)
- Medium colors (primary6-primary7) should be tested for contrast

### Color Psychology

This palette conveys:
- **Purple tones (start)**: Creativity, luxury, sophistication
- **Blue tones (middle)**: Trust, stability, professionalism
- **Cyan tones (end)**: Innovation, freshness, modernity

The gradient from purple to cyan creates a sense of transformation and progress, ideal for a dynamic application.
