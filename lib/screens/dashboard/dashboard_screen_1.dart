import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoply/components/grid_painter.dart';
import 'package:shoply/components/subtle_radial_glow.dart';
import 'package:shoply/config/constants/app_colors.dart';
import 'package:shoply/config/constants/text_styles.dart';

class DashboardScreen1 extends StatefulWidget {
  const DashboardScreen1({super.key});

  @override
  State<DashboardScreen1> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DashboardScreen1> {

 String assetName = 'assets/icons/compass_logo.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Grid Pattren Background
            Positioned.fill(child: CustomPaint(painter: GridPainter())),
        
            // Subtle Radial Glow
            SubtleRadialGlow(),
        
            // Centered Icon and Text
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Icon
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Outer circle (lightest)
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary.withOpacity(0.08),
                        ),
                      ),
                      // Inner circle
                      Container(
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary.withOpacity(0.15),
                        ),
                      ),
                      // Icon
                      SvgPicture.asset(assetName, width: 60, height: 60, colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn,))
                    ],
                  ),
                  SizedBox(height: 48,),
                  // Text
                  Text('Curated for you', style: TextStyle(color: AppColors.textHint, fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(height: 15,),
                  Text('Discover', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15,),
                  Text('Explore thousands of products handpicked\n by our experts. Find exactly what you need.', style: TextStyle(color: AppColors.textSecondary, fontSize: 17, fontWeight: FontWeight.normal))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}