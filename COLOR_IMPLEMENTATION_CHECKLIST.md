# Color Palette Implementation Checklist

Use this checklist when migrating existing code to use the new Mziba color palette.

## Pre-Implementation

- [ ] Read [COLOR_PALETTE_QUICKSTART.md](COLOR_PALETTE_QUICKSTART.md)
- [ ] Review [COLOR_PALETTE.md](COLOR_PALETTE.md) for detailed guidelines
- [ ] Check [lib/config/color_usage_examples.dart](lib/config/color_usage_examples.dart) for code patterns

## Code Migration

### 1. Replace Hardcoded Colors

- [ ] Find all hardcoded hex colors in your code
- [ ] Replace with appropriate `AppColors` constants
- [ ] Ensure imports: `import 'package:mziba/config/app_colors.dart';`

**Example:**
```dart
// Before
Container(color: Color(0xFF7400B8))

// After
Container(color: AppColors.primaryColor)
```

### 2. Update Theme Configuration

- [ ] Update `MaterialApp` theme to use `AppColors.lightColorScheme`
- [ ] Update dark theme to use `AppColors.darkColorScheme`
- [ ] Verify theme colors in all screens

**Example:**
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

### 3. Update UI Components

#### App Bars
- [ ] Replace AppBar colors with `AppColors.primaryColor`
- [ ] Ensure proper text color contrast

#### Buttons
- [ ] Primary buttons: `AppColors.primaryColor`
- [ ] Secondary buttons: `AppColors.secondaryColor`
- [ ] Accent/highlight buttons: `AppColors.accentColor`

#### Cards & Containers
- [ ] Replace solid colors with palette colors
- [ ] Consider using gradients for visual interest

#### Icons & Text
- [ ] Update icon colors to match brand palette
- [ ] Ensure text colors have proper contrast

### 4. Add Gradients

- [ ] Identify opportunities for gradient backgrounds
- [ ] Replace solid colors with `AppColors.createGradient()`
- [ ] Test different gradient directions

### 5. Status Indicators

- [ ] Map status states to appropriate palette colors:
  - Success/Active: `AppColors.primary10` (light cyan)
  - Info/Pending: `AppColors.primary5` (blue)
  - Warning: `AppColors.primary7` (turquoise)
  - Important: `AppColors.primary1` (deep purple)

## Testing

### Visual Testing
- [ ] Test on light theme
- [ ] Test on dark theme
- [ ] Verify all screens for consistency
- [ ] Check color contrast for accessibility

### Screen-by-Screen Review
- [ ] Login/Signup screens
- [ ] Home screen
- [ ] Profile screens
- [ ] Settings screens
- [ ] Content screens (posts, stories, etc.)
- [ ] Chat screens
- [ ] Notification screens

### Device Testing
- [ ] Test on iOS devices
- [ ] Test on Android devices
- [ ] Test on different screen sizes
- [ ] Test in landscape orientation

## Accessibility

- [ ] Verify color contrast ratios (use COLOR_REFERENCE.md)
- [ ] Test with screen readers
- [ ] Ensure colors are not the only way to convey information
- [ ] Test with color blindness simulators

## Documentation

- [ ] Update component documentation with new colors
- [ ] Add comments explaining color choices
- [ ] Update screenshots in documentation
- [ ] Update any design mockups

## Performance

- [ ] Verify no performance impact from gradient usage
- [ ] Check app size hasn't increased significantly
- [ ] Test rendering on low-end devices

## Before Merging

- [ ] All hardcoded colors replaced
- [ ] Theme properly configured
- [ ] All screens visually consistent
- [ ] Accessibility requirements met
- [ ] No build errors or warnings
- [ ] Code reviewed by team
- [ ] User testing completed (if applicable)

## Post-Deployment

- [ ] Monitor user feedback
- [ ] Check analytics for any UI issues
- [ ] Gather team feedback
- [ ] Update this checklist with lessons learned

## Common Issues & Solutions

### Issue: Colors look different on iOS vs Android
**Solution:** Ensure you're using the exact hex values from AppColors, not color names

### Issue: Gradient performance issues
**Solution:** Use `RepaintBoundary` around gradient containers or reduce gradient complexity

### Issue: Text not readable on colored backgrounds
**Solution:** Check contrast ratios in COLOR_REFERENCE.md and adjust text color

### Issue: Theme not applying to all components
**Solution:** Ensure Material 3 is enabled and colorScheme is properly configured

## Resources

- Quick Start: [COLOR_PALETTE_QUICKSTART.md](COLOR_PALETTE_QUICKSTART.md)
- Full Documentation: [COLOR_PALETTE.md](COLOR_PALETTE.md)
- Design Reference: [assets/design/COLOR_REFERENCE.md](assets/design/COLOR_REFERENCE.md)
- Code Examples: [lib/config/color_usage_examples.dart](lib/config/color_usage_examples.dart)
- Demo Screen: [lib/config/color_palette_demo.dart](lib/config/color_palette_demo.dart)
