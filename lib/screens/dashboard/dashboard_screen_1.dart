import 'package:flutter/material.dart';
import 'package:shoply/components/grid_painter.dart';
import 'package:shoply/components/subtle_radial_glow.dart';
import 'package:shoply/config/constants/app_colors.dart';

class DashboardScreen1 extends StatefulWidget {
  const DashboardScreen1({super.key});

  @override
  State<DashboardScreen1> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DashboardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Grid Pattren Background
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