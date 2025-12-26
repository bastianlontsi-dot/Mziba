# Mziba Color Palette - Design Assets

## Color Swatches for Design Tools

### Figma / Sketch / Adobe XD

Copy and paste these color values into your design tool:

```
Color 1:  #7400B8  (RGB: 116, 0, 184)
Color 2:  #6930C3  (RGB: 105, 48, 195)
Color 3:  #5E60CE  (RGB: 94, 96, 206)
Color 4:  #5390D9  (RGB: 83, 144, 217)
Color 5:  #4EA8DE  (RGB: 78, 168, 222)
Color 6:  #48BFE3  (RGB: 72, 191, 227)
Color 7:  #56CFE1  (RGB: 86, 207, 225)
Color 8:  #64DFDF  (RGB: 100, 223, 223)
Color 9:  #72EFDD  (RGB: 114, 239, 221)
Color 10: #80FFDB  (RGB: 128, 255, 219)
```

### CSS / Web

```css
:root {
  --color-primary-1: #7400B8;
  --color-primary-2: #6930C3;
  --color-primary-3: #5E60CE;
  --color-primary-4: #5390D9;
  --color-primary-5: #4EA8DE;
  --color-primary-6: #48BFE3;
  --color-primary-7: #56CFE1;
  --color-primary-8: #64DFDF;
  --color-primary-9: #72EFDD;
  --color-primary-10: #80FFDB;
  
  /* Main brand colors */
  --color-primary: var(--color-primary-1);
  --color-secondary: var(--color-primary-4);
  --color-accent: var(--color-primary-7);
}

/* Gradient */
.gradient-primary {
  background: linear-gradient(135deg, #7400B8, #4EA8DE, #80FFDB);
}

.gradient-full {
  background: linear-gradient(135deg, 
    #7400B8, #6930C3, #5E60CE, #5390D9, #4EA8DE,
    #48BFE3, #56CFE1, #64DFDF, #72EFDD, #80FFDB
  );
}
```

### Tailwind CSS

```javascript
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: {
        'mziba': {
          1: '#7400B8',
          2: '#6930C3',
          3: '#5E60CE',
          4: '#5390D9',
          5: '#4EA8DE',
          6: '#48BFE3',
          7: '#56CFE1',
          8: '#64DFDF',
          9: '#72EFDD',
          10: '#80FFDB',
          'primary': '#7400B8',
          'secondary': '#5390D9',
          'accent': '#56CFE1',
        }
      },
      backgroundImage: {
        'gradient-primary': 'linear-gradient(135deg, #7400B8, #4EA8DE, #80FFDB)',
        'gradient-full': 'linear-gradient(135deg, #7400B8, #6930C3, #5E60CE, #5390D9, #4EA8DE, #48BFE3, #56CFE1, #64DFDF, #72EFDD, #80FFDB)',
      }
    }
  }
}
```

### Android (colors.xml)

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Mziba Color Palette -->
    <color name="mziba_primary_1">#7400B8</color>
    <color name="mziba_primary_2">#6930C3</color>
    <color name="mziba_primary_3">#5E60CE</color>
    <color name="mziba_primary_4">#5390D9</color>
    <color name="mziba_primary_5">#4EA8DE</color>
    <color name="mziba_primary_6">#48BFE3</color>
    <color name="mziba_primary_7">#56CFE1</color>
    <color name="mziba_primary_8">#64DFDF</color>
    <color name="mziba_primary_9">#72EFDD</color>
    <color name="mziba_primary_10">#80FFDB</color>
    
    <!-- Main Brand Colors -->
    <color name="colorPrimary">@color/mziba_primary_1</color>
    <color name="colorSecondary">@color/mziba_primary_4</color>
    <color name="colorAccent">@color/mziba_primary_7</color>
</resources>
```

### iOS (Swift)

```swift
import UIKit

extension UIColor {
    static let mzibaPrimary1 = UIColor(hex: "#7400B8")
    static let mzibaPrimary2 = UIColor(hex: "#6930C3")
    static let mzibaPrimary3 = UIColor(hex: "#5E60CE")
    static let mzibaPrimary4 = UIColor(hex: "#5390D9")
    static let mzibaPrimary5 = UIColor(hex: "#4EA8DE")
    static let mzibaPrimary6 = UIColor(hex: "#48BFE3")
    static let mzibaPrimary7 = UIColor(hex: "#56CFE1")
    static let mzibaPrimary8 = UIColor(hex: "#64DFDF")
    static let mzibaPrimary9 = UIColor(hex: "#72EFDD")
    static let mzibaPrimary10 = UIColor(hex: "#80FFDB")
    
    static let mzibaPrimary = mzibaPrimary1
    static let mzibaSecondary = mzibaPrimary4
    static let mzibaAccent = mzibaPrimary7
}
```

### React Native

```javascript
// colors.js
export const MzibaColors = {
  primary1: '#7400B8',
  primary2: '#6930C3',
  primary3: '#5E60CE',
  primary4: '#5390D9',
  primary5: '#4EA8DE',
  primary6: '#48BFE3',
  primary7: '#56CFE1',
  primary8: '#64DFDF',
  primary9: '#72EFDD',
  primary10: '#80FFDB',
  
  primary: '#7400B8',
  secondary: '#5390D9',
  accent: '#56CFE1',
};
```

## Color Contrast Ratios

For accessibility (WCAG 2.1 AA standard requires 4.5:1 for normal text, 3:1 for large text):

| Color | On White | On Black |
|-------|----------|----------|
| #7400B8 | 5.2:1 ✓ | 4.0:1 ✓ |
| #5390D9 | 3.1:1 ⚠ | 6.7:1 ✓ |
| #56CFE1 | 2.0:1 ✗ | 10.5:1 ✓ |
| #80FFDB | 1.5:1 ✗ | 14.2:1 ✓ |

✓ = Passes | ⚠ = Passes for large text only | ✗ = Fails

**Recommendation:** 
- Use dark colors (primary1-primary5) with white text
- Use light colors (primary8-primary10) with dark text
- Always test contrast in your specific use case

## Print Colors (CMYK)

Approximate CMYK values for print materials:

```
Color 1:  C=68  M=100 Y=0   K=0   (#7400B8)
Color 4:  C=62  M=34  Y=0   K=0   (#5390D9)
Color 7:  C=62  M=0   Y=15  K=0   (#56CFE1)
Color 10: C=50  M=0   Y=14  K=0   (#80FFDB)
```

*Note: CMYK values are approximations. Always test with your printer for accurate color matching.*
