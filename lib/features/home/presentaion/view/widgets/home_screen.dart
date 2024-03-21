// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_states.dart';
import 'home_category_bar.dart';
import 'home_custom_appbar.dart';
import 'home_custom_search_bar.dart';
import 'new_arrivals.dart';
import 'popular_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    HomeCubit.get(context).getHomeFullData();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ErrorState) {
          return const Center(
            child: Text('error'),
          );
        } else {
          return Scaffold(
            appBar: homeCustomAppBar(cubit.checkCart, context),
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const HomeCustomSearchBar(),
                      NewArrivals(
                        bannersList: cubit.homeData.data!.banners,
                      ),
                      HomeCategoryBar(
                        categories: cubit.categoriesData.data!.categories!,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: PopularItems(products: cubit.homeData.data!.products),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
