import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop_app/core/utils/dio_helper.dart';

import '../../../../../../core/utils/cache_helper.dart';
import '../../../../../../core/utils/end_points.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  final endPoints = EndPoints();

  bool showpassword = false;
  IconData showPasswordIcon = Icons.visibility;

  void changeShowPasswordState() {
    showpassword = !showpassword;
    showpassword
        ? showPasswordIcon = Icons.visibility_off
        : showPasswordIcon = Icons.visibility;
    emit(LoginShowPasswordState());
  }

  void loginUser({
    required String email,
    required String password,
  }) async {
    try {
      emit(LoginLoadingState());
      DioHelper.postData(url: endPoints.login, data: {
        'email': email,
        'password': password,
      }).then((value) {
        _cacheTokin(token: value.data['data']['token']);
        emit(LoginSuccessState());
      });
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }

  void _cacheTokin({required String token}) {
    CacheHelper.putData(key: 'token', value: token);
    debugPrint(token);
  }
}
