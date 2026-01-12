import 'package:flutter/material.dart';
import 'package:shoply/config/constants/app_colors.dart';

class SubtleRadialGlow extends StatelessWidget {
  const SubtleRadialGlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: -MediaQuery.of(context).size.width * 0.2,
            right: -MediaQuery.of(context).size.width * 0.2,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 1.5,
                height: MediaQuery.of(context).size.width * 1.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      AppColors.primary.withOpacity(0.08),
                      AppColors.primary.withOpacity(0.0),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}