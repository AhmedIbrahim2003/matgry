abstract class RegisterStates {}

class RegisterShowPasswordState extends RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterSuccessState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  final String error;

  RegisterErrorState(this.error);
}

class RegisterWithGoogleLoadingState extends RegisterStates {}

class RegisterWithGoogleSuccessState extends RegisterStates {}

class RegisterWithGoogleErrorState extends RegisterStates {
  final String error;

  RegisterWithGoogleErrorState(this.error);
}

class CreateUserLoadingState extends RegisterStates {}

class CreateUserSuccessState extends RegisterStates {}

class CreateUserErrorState extends RegisterStates {
  final String error;

  CreateUserErrorState(this.error);
}
