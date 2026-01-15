import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoply/components/grid_painter.dart';
import 'package:shoply/components/subtle_radial_glow.dart';
import 'package:shoply/config/constants/app_colors.dart';
import 'package:shoply/screens/home_screen.dart';

class OnboardScreen3 extends StatefulWidget {
  const OnboardScreen3({super.key});

  @override
  State<OnboardScreen3> createState() => _OnboardScreen1State();
}

class _OnboardScreen1State extends State<OnboardScreen3> {

 String assetName = 'assets/icons/truck.svg';
 String assetName2 = 'assets/icons/greater-than.svg';



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
                  Text('Lightning fast delievery', style: TextStyle(color: AppColors.textHint, fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(height: 15,),
                  Text('Swift', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15,),
                  Text('Track your orders in real-time. Get everything\n delivered right to your doorstep.', style: TextStyle(color: AppColors.textSecondary, fontSize: 17, fontWeight: FontWeight.normal)),
                                        ],
              ),
            ),
            Positioned(
              bottom: 48,
              left: 24,
              right: 24,
                    child: ElevatedButton(
                    onPressed: () async{await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Get Started', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                        SizedBox(width: 10,),
                        SvgPicture.asset(assetName2,height: 25,width: 25,colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),)
                      ],
                    ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}