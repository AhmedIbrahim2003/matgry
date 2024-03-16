abstract class HomeStates {}

abstract class LoadingState extends HomeStates {}

abstract class SuccessState extends HomeStates {}

abstract class ErrorState extends HomeStates {
  final String error;

  ErrorState({required this.error});
}

class HomeInitialState extends HomeStates {}

class BottomNavBarIndexChangeState extends HomeStates {}

class GetHomeDataLoadingState extends LoadingState {}

class GetHomeDataSuccessState extends SuccessState {}

class GetHomeDataErrorState extends ErrorState {
  GetHomeDataErrorState({required super.error});
}

class GetCategoriesDataLoadingState extends LoadingState {}

class GetCategoriesDataSuccessState extends SuccessState {}

class GetCategoriesDataErrorState extends ErrorState {
  GetCategoriesDataErrorState({required super.error});
}

class ChangeFavoriteErrorState extends ErrorState {
  ChangeFavoriteErrorState({required super.error});
}

class ChangeCartSuccessState extends HomeStates {}

class ChangeCartErrorState extends ErrorState {
  ChangeCartErrorState({required super.error});
}

