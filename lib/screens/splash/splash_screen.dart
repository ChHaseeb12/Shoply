import 'package:flutter/material.dart';
import 'package:shoply/components/grid_painter.dart';
import 'package:shoply/components/subtle_radial_glow.dart';
import 'package:shoply/config/constants/text_styles.dart';
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

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon
                Stack(
                  children: [
                    Card(
                      elevation: 7,
                      color: AppColors.primary,
                      
                      child: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 48,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                // Text
                Text('Shoply', style: AppTextStyles.h1),
                SizedBox(height: 6),
                Text(
                  'Shop smarter, live better',
                  style: AppTextStyles.bodySmall,
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
