import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/core/utils/dio_helper.dart';
import 'package:matgry/features/favourite/presentaion/view/favourite_screen.dart';
import 'package:matgry/features/home/presentaion/view/widgets/home_screen.dart';

import '../../../../../core/utils/end_points.dart';
import '../../../../notification/presentation/view/notification_screen.dart';
import '../../../data/model/categories_model/categories/categories_model.dart';
import '../../../data/model/home_model/home_data_model.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  final endPoints = EndPoints();

  int bottomNavIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const FavouriteScreen(),
    const NotificationScreen(),
    const Center(child: Text('Profile Screen')),
  ];

  void bottomNavIndexChange({required int newIndex}) {
    bottomNavIndex = newIndex;
    emit(BottomNavBarIndexChangeState());
  }

  HomeModel homeData = HomeModel();
  CategoriesModel categoriesData = CategoriesModel();

  void getHomeFullData() async {
    emit((GetHomeDataLoadingState()));
    await _getHomeData();
    await _getCategoriesData();
    emit(GetHomeDataSuccessState());
  }

  Future<void> _getHomeData() async {
    await DioHelper.getData(
      url: endPoints.home,
    ).then((value) async {
      homeData = HomeModel.fromJson(value.data);
    });
  }

  Future<void> _getCategoriesData() async {
    await DioHelper.getData(
      url: endPoints.categories,
    ).then((value) {
      categoriesData = CategoriesModel.fromJson(value.data);
    });
  }

  void changeFavoriteState({required int productID}) {
    DioHelper.postData(
      url: endPoints.favorite,
      data: {'product_id': productID},
    ).then((value) {}).catchError((e) {
      emit(ChangeFavoriteErrorState(error: e));
    });
  }

    bool checkCart = false;

  void addOrRemoveFromCart({required int productID}) {
    DioHelper.postData(
      url: endPoints.cart,
      data: {'product_id': productID},
    ).then((value) {
      checkCart = true;
      emit(ChangeCartSuccessState());
    }).catchError((e) {
      emit(ChangeCartErrorState(error: e));
    });
  }
}
