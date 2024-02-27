import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop_app/core/utils/cache_helper.dart';
import 'package:nike_shop_app/core/utils/dio_helper.dart';
import 'package:nike_shop_app/features/home/presentaion/view/home_view.dart';
import 'package:sizer/sizer.dart';

import 'bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await DioHelper.init();
  await Firebase.initializeApp();
  await CacheHelper.init();
  var showOnboarding =
      await CacheHelper.getData(key: 'OnBoardingScreenShownOnce') ?? true;

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MainApp(showOnboarding: showOnboarding));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.showOnboarding});
  final bool showOnboarding;
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Raleway',
          ),
          home: const HomeView(),
        );
      },
    );
  }
}
