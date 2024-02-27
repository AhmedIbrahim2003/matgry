abstract class LoginStates {}

class LoginShowPasswordState extends LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginErrorState extends LoginStates {
  final String error;

  LoginErrorState(this.error);
}

class LoginWithGoogleLoadingState extends LoginStates {}

class LoginWithGoogleSuccessState extends LoginStates {}

class LoginWithGoogleErrorState extends LoginStates {
  final String error;

  LoginWithGoogleErrorState(this.error);
}
