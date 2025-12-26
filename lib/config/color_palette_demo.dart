import 'package:flutter/material.dart';
import 'package:mziba/config/app_colors.dart';

/// Color Palette Demo Screen
/// This screen displays all the colors in the Mziba visual identity palette
/// Useful for developers and designers to see and test the color palette
class ColorPaletteDemo extends StatelessWidget {
  const ColorPaletteDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mziba Color Palette'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Visual Identity Colors',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Individual color swatches
            const Text(
              'Primary Color Palette',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            _buildColorSwatch('Primary 1', AppColors.primary1, '#7400B8'),
            _buildColorSwatch('Primary 2', AppColors.primary2, '#6930C3'),
            _buildColorSwatch('Primary 3', AppColors.primary3, '#5E60CE'),
            _buildColorSwatch('Primary 4', AppColors.primary4, '#5390D9'),
            _buildColorSwatch('Primary 5', AppColors.primary5, '#4EA8DE'),
            _buildColorSwatch('Primary 6', AppColors.primary6, '#48BFE3'),
            _buildColorSwatch('Primary 7', AppColors.primary7, '#56CFE1'),
            _buildColorSwatch('Primary 8', AppColors.primary8, '#64DFDF'),
            _buildColorSwatch('Primary 9', AppColors.primary9, '#72EFDD'),
            _buildColorSwatch('Primary 10', AppColors.primary10, '#80FFDB'),

            const SizedBox(height: 24),

            // Main application colors
            const Text(
              'Main Application Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            _buildColorSwatch(
                'Primary Color', AppColors.primaryColor, '#7400B8'),
            _buildColorSwatch(
                'Secondary Color', AppColors.secondaryColor, '#5390D9'),
            _buildColorSwatch('Accent Color', AppColors.accentColor, '#56CFE1'),

            const SizedBox(height: 24),

            // Gradient examples
            const Text(
              'Gradient Examples',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            _buildGradientBox(
              'Primary Gradient',
              AppColors.createGradient(),
            ),
            const SizedBox(height: 8),
            _buildGradientBox(
              'Full Gradient',
              AppColors.createGradient(colors: AppColors.fullGradient),
            ),
            const SizedBox(height: 8),
            _buildGradientBox(
              'Vertical Gradient',
              AppColors.createGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),

            const SizedBox(height: 24),

            // Usage example
            const Text(
              'Usage Example',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            _buildUsageExample(),
          ],
        ),
      ),
    );
  }

  Widget _buildColorSwatch(String name, Color color, String hexCode) {
    final brightness = ThemeData.estimateBrightnessForColor(color);
    final textColor = brightness == Brightness.dark ? Colors.white : Colors.black;

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text(
            hexCode,
            style: TextStyle(
              color: textColor.withOpacity(0.8),
              fontFamily: 'monospace',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientBox(String title, LinearGradient gradient) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 4),
        Container(
          height: 80,
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUsageExample() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
              ),
              child: const Text('Primary Button'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
                foregroundColor: Colors.white,
              ),
              child: const Text('Secondary Button'),
            ),
            const SizedBox(height: 8),
            Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: AppColors.createGradient(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Gradient Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
