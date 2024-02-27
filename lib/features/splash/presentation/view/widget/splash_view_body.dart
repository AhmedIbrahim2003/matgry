// ignore_for_file: public_member_api_docs, sort_constructors_first, no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import 'package:nike_shop_app/features/auth/presentaion/register/view/register_view.dart';

import '../../../../../constant.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../onBoarding/presentaion/view/onBoarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    Key? key,
    required this.showOnboarding,
  }) : super(key: key);

  final bool showOnboarding;

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState(showOnboarding);
}

class _SplashViewBodyState extends State<SplashViewBody> {
  final bool showOnboarding;

  _SplashViewBodyState(this.showOnboarding);
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        myPushReplacmentNavigator(
          context: context,
          destination:
              showOnboarding ? const OnBoardingView() : const RegisterView(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.nikeLogo,
            ),
            Text(
              'NIKE',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp),
            )
          ],
        ),
      ),
    );
  }
}
