import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../gen/assets.gen.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Image.asset(Assets.images.onboarding.onboarding2.path),
            ),
            Positioned(
              top: 34.h,
              left: 10.w,
              child: Image.asset(
                Assets.images.onboarding.onboarding2shadow.path,
                scale: 4,
              ),
            ),
            Positioned(
              top: 0.1.h,
              left: 8.w,
              child: Image.asset(
                Assets.images.onboarding.onboarding2highligh1Png.path,
                scale: 4,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                Assets.images.onboarding.smileface.path,
                scale: 4,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          'Let\'s Start Journey\nWith Nike',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 25.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        Text(
          'Smart, Gorgeous & Fashionable\nCollection Explor Now',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: 13.sp,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
