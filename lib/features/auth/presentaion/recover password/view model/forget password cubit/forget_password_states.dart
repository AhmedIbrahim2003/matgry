abstract class RecoverPasswordStates {}

class RecoverPasswordInitialStates extends RecoverPasswordStates {}

class SendEmailSuccessState extends RecoverPasswordStates {}

class SendEmailErrorState extends RecoverPasswordStates {
  final String error;

  SendEmailErrorState(this.error);
}
