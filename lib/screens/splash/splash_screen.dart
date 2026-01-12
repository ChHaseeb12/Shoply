import 'package:flutter/material.dart';
import 'package:shoply/components/grid_painter.dart';
import 'package:shoply/components/subtle_radial_glow.dart';
import '../../config/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // Grid Pattern Background
          Positioned.fill(child: CustomPaint(painter: GridPainter())),

          // Subtle Radial Glow
          SubtleRadialGlow(),

          // Centered Icon and Text
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle (lightest)
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary.withOpacity(0.08),
                  ),
                ),
                // Inner circle
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary.withOpacity(0.15),
                  ),
                ),
                // Icon (compass/navigation style)
                Icon(
                  Icons.navigation_outlined, // or Icons.explore_outlined
                  size: 50,
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

