import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matgry/features/onBoarding/presentaion/view_model/onboarding%20cubit/onboarding_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../../../constant.dart';
import '../../../../gen/assets.gen.dart';
import '../view_model/onboarding cubit/onboarding_states.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboadringCubit(),
      child: BlocBuilder<OnboadringCubit, OnboardingStates>(
        builder: (context, state) {
          PageController pageController = PageController();
          return Scaffold(
            backgroundColor: darkBlueColor,
            body: SafeArea(
              child: Stack(
                children: [
                  PageView.builder(
                    itemBuilder: (context, index) {
                      return OnboadringCubit.get(context)
                          .onboardingScreens[index];
                    },
                    onPageChanged: (value) {
                      OnboadringCubit.get(context).changeCurrentIndex(value);
                    },
                    controller: pageController,
                    itemCount:
                        OnboadringCubit.get(context).onboardingScreens.length,
                  ),
                  Positioned(
                    bottom: 24.h,
                    child: SvgPicture.asset(
                      Assets.images.onboarding.darkNikeLogo,
                      width: 100.w,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 3.h),
                      child: GestureDetector(
                        onTap: () {
                          OnboadringCubit.get(context).conformShownOnce();
                          OnboadringCubit.get(context)
                              .nextPageButtonLogic(context, pageController);
                        },
                        child: Container(
                          height: 7.h,
                          width: 90.w,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              OnboadringCubit.get(context).currentIndex == 0
                                  ? 'Get Started'
                                  : 'Next',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
