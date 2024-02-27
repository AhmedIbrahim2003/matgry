import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nike_shop_app/core/utils/cache_helper.dart';
import 'package:nike_shop_app/core/utils/dio_helper.dart';
import 'package:nike_shop_app/core/utils/end_points.dart';
import 'package:nike_shop_app/features/auth/presentaion/register/view%20model/register%20cubit/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  final endPoints = EndPoints();
  void registerUser(
      {required String email,
      required String password,
      required String phone,
      required String name}) async {
    try {
      emit(RegisterLoadingState());
      DioHelper.postData(
        url: endPoints.register,
        data: {
          'name': name,
          'email': email,
          'password': password,
          'phone': phone,
        },
      ).then((value) {
        _cacheTokin(token: value.data['token']);
        emit(RegisterSuccessState());
      });
    } catch (e) {
      emit(RegisterErrorState(e.toString()));
    }
  }

  bool showpassword = false;
  IconData showPasswordIcon = Icons.visibility;

  void changeShowPasswordState() {
    showpassword = !showpassword;
    showpassword
        ? showPasswordIcon = Icons.visibility_off
        : showPasswordIcon = Icons.visibility;
    emit(RegisterShowPasswordState());
  }

  void _cacheTokin({required String token}) {
    CacheHelper.putData(key: 'token', value: token);
    debugPrint(token);
  }
}
