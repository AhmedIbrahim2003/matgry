// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_states.dart';
import 'category_bar.dart';
import 'customApp.dart';
import 'custom_search_bar.dart';
import 'new_arrivals.dart';
import 'popular_shoes.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: customAppBar(),
          body: const CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    CustomSearchBar(),
                    NewArrivals(),
                    CategoryBar(),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: PopularShoes(),
              )
            ],
          ),
        );
      },
    );
  }
}
