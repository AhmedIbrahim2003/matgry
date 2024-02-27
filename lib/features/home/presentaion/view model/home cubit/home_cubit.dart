import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop_app/core/utils/dio_helper.dart';
import 'package:nike_shop_app/features/favourite/presentaion/view/favourite_screen.dart';
import 'package:nike_shop_app/features/home/presentaion/view/widgets/home_view_body.dart';

import '../../../../../core/utils/end_points.dart';
import '../../../model/home_model/home_model.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  final endPoints = EndPoints();

  int bottomNavIndex = 0;
  List<Widget> pages = [
    const HomeViewBody(),
    const FavouriteScreen(),
    const Center(child: Text('Notification Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  void bottomNavIndexChange({required int newIndex}) {
    bottomNavIndex = newIndex;
    emit(BottomNavBarIndexChangeState());
  }

  HomeModel homeModel = HomeModel();

  void getCategories() {
    DioHelper.getData(
      url: endPoints.categories,
    ).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      print(homeModel);
    });
  }
}
