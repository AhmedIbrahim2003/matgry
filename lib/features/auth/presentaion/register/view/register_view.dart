import 'package:flutter/material.dart';
import 'package:nike_shop_app/features/auth/presentaion/register/view/widget/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const RegisterViewBody(),
    );
  }
}
