import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoply/config/constants/app_colors.dart';
import 'package:shoply/config/constants/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            // Icon
            Stack(
              children: [
                Card(
                  elevation: 0,
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      'assets/icons/house.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 48,
                      height: 48,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            // Text
            Text('Welcome back', style: AppTextStyles.h1),
            SizedBox(height: 8,),
            Text('Enter your phone number to continue', style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textHint)),
            SizedBox(height: 40,),
            // Text field
            Text('Phone Number', style: AppTextStyles.bodyMedium,),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Row(
                    children: [
                      // Placeholder for flag, you might want to use a package for country flags
                      Text('🇺🇸', style: AppTextStyles.bodyMedium),
                      SizedBox(width: 8),
                      Text('+1', style: AppTextStyles.bodyMedium),
                      Icon(Icons.arrow_drop_down, color: AppColors.iconGray),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '(555) 000-0000',
                      hintStyle: AppTextStyles.bodyMedium
                          .copyWith(color: AppColors.textHint),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColors.surface,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    ),
                    keyboardType: TextInputType.phone,
                    style: AppTextStyles.bodyMedium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child:
                    Text('Continue', style: AppTextStyles.button),
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.border,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'or continue with',
                    style: AppTextStyles.bodySmall
                        .copyWith(color: AppColors.textHint),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.border,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Google login
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(color: AppColors.border),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/chrome.svg',
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Google',
                            style: AppTextStyles.button
                                .copyWith(color: AppColors.textPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Apple login
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(color: AppColors.border),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/apple.svg',
                            height: 24,
                            width: 24,
                            colorFilter:
                                const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Apple',
                            style: AppTextStyles.button
                                .copyWith(color: AppColors.textPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle skip action
                },
                child: Text(
                  'Skip for now',
                  style:
                      AppTextStyles.link.copyWith(color: AppColors.textPrimary),
                ),
              ),
            ),
            SizedBox(height: 24), // Added to provide space before legal text
            Align(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By continuing, you agree to our ',
                  style: AppTextStyles.bodySmall
                      .copyWith(color: AppColors.textSecondary),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: AppTextStyles.link
                          .copyWith(color: AppColors.textPrimary),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: AppTextStyles.bodySmall
                          .copyWith(color: AppColors.textSecondary),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: AppTextStyles.link
                          .copyWith(color: AppColors.textPrimary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}