// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/favourite/presentaion/view%20model/favourite%20cubit/favourite_cubit.dart';
import 'package:matgry/features/favourite/presentaion/view%20model/favourite%20cubit/favourite_states.dart';

import 'widgets/favourite_custom_appbar.dart';
import 'widgets/favourite_screen_gridview.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit()..getFavouriteData(),
      child: BlocBuilder<FavouriteCubit, FavouriteStates>(
        builder: (context, state) {
          if (state is GetFavouriteDataLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetFavouriteDataErrorState) {
            return const Center(
              child: Text('Error'),
            );
          } else {
            return Scaffold(
              appBar: favouriteCustomeAppbar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        FavouriteGridView(
                            favouriteProduct:
                                FavouriteCubit.get(context).favouriteData),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
