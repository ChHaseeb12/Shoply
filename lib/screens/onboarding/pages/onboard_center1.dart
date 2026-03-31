import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoply/config/constants/app_colors.dart';

class OnboardCenter1 extends StatelessWidget {
  const OnboardCenter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withOpacity(0.08),
                ),
              ),
              Container(
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withOpacity(0.15),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/compass_logo.svg',
                width: 60,
                height: 60,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              )
            ],
          ),
          const SizedBox(height: 48),
          Text('Curated for you',
              style: TextStyle(color: AppColors.textHint, fontSize: 16)),
          const SizedBox(height: 15),
          const Text('Discover',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Text(
            'Explore thousands of products handpicked\n by our experts. Find exactly what you need.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary, fontSize: 17),
          ),
        ],
      ),
    );
  }
}