import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_states.dart';

import '../../../../constant.dart';
import '../view model/home cubit/home_cubit.dart';
import 'widgets/home_custom_navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeFullData(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            backgroundColor: scaffoldGreyBackGround,
            bottomNavigationBar: const HomeCustomNavBar(),
            extendBody: true,
            body: cubit.pages[cubit.bottomNavIndex],
          );
        },
      ),
    );
  }
}
