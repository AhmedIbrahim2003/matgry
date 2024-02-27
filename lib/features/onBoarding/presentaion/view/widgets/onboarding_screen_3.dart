import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../gen/assets.gen.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Image.asset(Assets.images.onboarding.onboarding3.path)),
        Positioned(
          top: 13.h,
          left: 4.w,
          child: Image.asset(
            Assets.images.onboarding.onboarding3highlight.path,
            scale: 3.60,
          ),
        ),
        Positioned(
          top: 7.h,
          left: 12.w,
          child: Image.asset(
            Assets.images.onboarding.smileface.path,
            scale: 2.2,
          ),
        ),
        Positioned(
          top: 50.h,
          left: 9.5.w,
          child: Column(
            children: [
              Text(
                'You Have the\n Power To',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 1.h),
              Text(
                'There Are Many Beautiful And Attractive\nPlants To Your Room',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
