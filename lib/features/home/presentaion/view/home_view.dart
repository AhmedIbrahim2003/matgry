import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop_app/features/home/presentaion/view%20model/home%20cubit/home_states.dart';

import '../../../../constant.dart';
import '../view model/home cubit/home_cubit.dart';
import 'widgets/custom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getCategories(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            backgroundColor: scaffoldGreyBackGround,
            bottomNavigationBar: const CustomBottomNavBar(),
            extendBody: true,
            body: cubit.pages[cubit.bottomNavIndex],
          );
        },
      ),
    );
  }
}
