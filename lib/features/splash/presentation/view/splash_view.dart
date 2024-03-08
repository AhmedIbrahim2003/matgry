import 'package:flutter/material.dart';
import 'package:matgry/features/splash/presentation/view/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key, required this.showOnboarding});
  final bool showOnboarding;
  @override
  Widget build(BuildContext context) {
    return SplashViewBody(showOnboarding: showOnboarding);
  }
}
