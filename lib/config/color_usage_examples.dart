import 'package:flutter/material.dart';
import 'package:mziba/config/app_colors.dart';

/// Usage Examples for Mziba Color Palette
/// 
/// This file demonstrates various ways to use the AppColors class
/// in your Flutter widgets and screens.

// ============================================================================
// Example 1: Using Colors in Widgets
// ============================================================================

class ExampleButton extends StatelessWidget {
  const ExampleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor, // Use primary brand color
        foregroundColor: Colors.white,
      ),
      child: const Text('Primary Button'),
    );
  }
}

// ============================================================================
// Example 2: Using Gradients
// ============================================================================

class GradientCard extends StatelessWidget {
  const GradientCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: AppColors.createGradient(), // Use default gradient
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text(
          'Beautiful Gradient',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// Example 3: Custom Gradient Direction
// ============================================================================

class VerticalGradientContainer extends StatelessWidget {
  const VerticalGradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        gradient: AppColors.createGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

// ============================================================================
// Example 4: Using Full Gradient
// ============================================================================

class FullGradientBackground extends StatelessWidget {
  const FullGradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.createGradient(
          colors: AppColors.fullGradient, // Use all 10 colors
        ),
      ),
    );
  }
}

// ============================================================================
// Example 5: App Bar with Brand Color
// ============================================================================

class BrandedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const BrandedAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// ============================================================================
// Example 6: Using Individual Colors from Palette
// ============================================================================

class ColorfulRow extends StatelessWidget {
  const ColorfulRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _colorBox(AppColors.primary1)),
        Expanded(child: _colorBox(AppColors.primary3)),
        Expanded(child: _colorBox(AppColors.primary5)),
        Expanded(child: _colorBox(AppColors.primary7)),
        Expanded(child: _colorBox(AppColors.primary9)),
      ],
    );
  }

  Widget _colorBox(Color color) {
    return Container(
      height: 80,
      color: color,
    );
  }
}

// ============================================================================
// Example 7: Theme Integration
// ============================================================================

class AppWithColorTheme extends StatelessWidget {
  const AppWithColorTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: AppColors.lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: AppColors.darkColorScheme,
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('App with Mziba Color Scheme'),
        ),
      ),
    );
  }
}

// ============================================================================
// Example 8: Custom Gradient Colors
// ============================================================================

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.createGradient(
          colors: [
            AppColors.primary2,
            AppColors.primary6,
            AppColors.primary8,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          'Custom Gradient Button',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

// ============================================================================
// Example 9: Icon with Brand Color
// ============================================================================

class BrandedIcon extends StatelessWidget {
  final IconData icon;
  final double size;

  const BrandedIcon({
    Key? key,
    required this.icon,
    this.size = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.primaryColor,
      size: size,
    );
  }
}

// ============================================================================
// Example 10: Status Indicator with Palette Colors
// ============================================================================

class StatusIndicator extends StatelessWidget {
  final String status;

  const StatusIndicator({Key? key, required this.status}) : super(key: key);

  Color _getStatusColor() {
    switch (status) {
      case 'active':
        return AppColors.primary10; // Lightest - positive
      case 'pending':
        return AppColors.primary5; // Middle - neutral
      case 'inactive':
        return AppColors.primary1; // Darkest - serious
      default:
        return AppColors.secondaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getStatusColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
