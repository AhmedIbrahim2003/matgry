import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/constant.dart';
import 'package:matgry/core/utils/cache_helper.dart';
import 'package:matgry/features/onBoarding/presentaion/view/widgets/onboarding_screen_1.dart';
import 'package:matgry/features/onBoarding/presentaion/view/widgets/onboarding_screen_2.dart';
import 'package:matgry/features/onBoarding/presentaion/view/widgets/onboarding_screen_3.dart';

import '../../../../auth/presentaion/register/view/register_view.dart';
import 'onboarding_states.dart';

class OnboadringCubit extends Cubit<OnboardingStates> {
  OnboadringCubit() : super(OnboardingInitialState());
  static OnboadringCubit get(context) => BlocProvider.of(context);

  List<Widget> onboardingScreens = [
    const OnBoardingScreen1(),
    const OnBoardingScreen2(),
    const OnBoardingScreen3(),
  ];

  int currentIndex = 0;
  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(OnboardingPageChangedState());
  }

  void nextPage(PageController pageController) {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void goToAuthPhase(BuildContext context) {
    myPushReplacmentNavigator(
      context: context,
      destination: const RegisterView(),
    );
  }

  void nextPageButtonLogic(
      BuildContext context, PageController pageController) {
    currentIndex == 2 ? goToAuthPhase(context) : nextPage(pageController);
  }

  void conformShownOnce() {
    CacheHelper.putData(key: 'OnBoardingScreenShownOnce', value: false);
  }
}
