//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/auth/presentaion/recover%20password/view%20model/forget%20password%20cubit/forget_password_states.dart';

class RecoverPasswordCubit extends Cubit<RecoverPasswordStates> {
  RecoverPasswordCubit() : super(RecoverPasswordInitialStates());
  static RecoverPasswordCubit get(context) => BlocProvider.of(context);

  //final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> sendEmail({required String email}) async {
    // try {
    //   await _firebaseAuth.sendPasswordResetEmail(email: email).then(
    //     (value) {
    //       emit(SendEmailSuccessState());
    //     },
    //   );
    // } on FirebaseAuthException catch (e) {
    //   emit(SendEmailErrorState(e.message!));
    // }
  }

  void emitstate() {
    emit(SendEmailSuccessState());
  }
}
