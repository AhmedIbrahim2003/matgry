import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shop_app/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(15.sp),
          child: Center(
            child: SvgPicture.asset(
              Assets.images.onboarding.highlights,
              width: 100.w,
              height: 100.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 45.sp),
          child: Image.asset(Assets.images.onboarding.onboarding1.path),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            'WELLCOME TO\nNIKE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 16.w,
                        child: SvgPicture.asset(
                          Assets.images.onboarding.textHighlight1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                SvgPicture.asset(
                  Assets.images.onboarding.textHightlight2,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
