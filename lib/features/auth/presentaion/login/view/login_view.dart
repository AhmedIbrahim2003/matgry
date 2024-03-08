import 'package:flutter/material.dart';
import 'package:matgry/features/auth/presentaion/login/view/widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const LoginViewBody(),
    );
  }
}
