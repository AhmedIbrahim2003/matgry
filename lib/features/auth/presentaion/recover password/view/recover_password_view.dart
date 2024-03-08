import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:matgry/constant.dart';
import 'package:matgry/features/auth/presentaion/recover%20password/view/widget/recover_password_view_body.dart';

class RecoverPasswordView extends StatelessWidget {
  const RecoverPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(4),
            child: GestureDetector(
              onTap: () {
                myPopNavigator(context: context);
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor('#F7F7F9'),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          )),
      body: const RecoverPasswordViewBody(),
    );
  }
}
