import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/favourite/presentaion/view%20model/favourite%20cubit/favourite_states.dart';

import '../../../../../core/utils/dio_helper.dart';
import '../../../../../core/utils/end_points.dart';
import '../../../data/model/favourite_model/favorite_model.dart';

class FavouriteCubit extends Cubit<FavouriteStates> {
  FavouriteCubit() : super(FavouriteInitialState());
  static FavouriteCubit get(context) => BlocProvider.of(context);
  final endPoints = EndPoints();

  FavouriteModel favouriteData = FavouriteModel();

  void getFavouriteData() async {
    emit(GetFavouriteDataLoadingState());
    await DioHelper.getData(
      url: endPoints.favorite,
    ).then((value) async {
      favouriteData = FavouriteModel.fromJson(value.data);
      emit(GetFavouriteDataSuccessState());
    }).catchError((e){
      emit(GetFavouriteDataErrorState());
    });
  }
}
