import 'package:flutter/material.dart';
import 'package:shoply/components/grid_painter.dart';
import 'package:shoply/components/subtle_radial_glow.dart';
import 'package:shoply/config/constants/text_styles.dart';
import 'package:shoply/screens/onboard/onboard_screen_1.dart';
import '../../config/constants/app_colors.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
@override

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() { 
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      if(!mounted) {return;}
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardScreen1()));
    });
  }

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
         Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Lottie.asset('assets/lottie/Insider-loading.json', width: 110, height: 110),
            ),
          ),
        ],
      ),
    );
  }
}
