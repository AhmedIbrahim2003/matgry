import 'dart:ui';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_shop_app/features/auth/presentaion/recover%20password/view%20model/forget%20password%20cubit/forget_password_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constant.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../register/view/widget/my_input_text_field.dart';
import '../../view model/forget password cubit/forget_password_states.dart';

class RecoverPasswordViewBody extends StatelessWidget {
  const RecoverPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController emailInputController = TextEditingController();
    return BlocProvider(
      create: (context) => RecoverPasswordCubit(),
      child: BlocConsumer<RecoverPasswordCubit, RecoverPasswordStates>(
        listener: (context, state) {
          if (state is SendEmailErrorState) {
            final snackBar = SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message: state.error,
                contentType: ContentType.failure,
              ),
            );

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          } else if (state is SendEmailSuccessState) {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: AlertDialog(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueColor,
                    ),
                    child: Image.asset(Assets.images.auth.email.path),
                  ),
                  content: const SizedBox(
                    height: 60,
                    child: Column(
                      children: [
                        Text(
                          'Check your email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'We have send password recovery code in your email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF707B81),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.25,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ).then((value) => myPopNavigator(context: context));
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 27.sp),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Enter your Email account to reset\nyour password',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: lightSupTextColor),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            MyInputTextForm(
                              title: '',
                              inputHint: 'email@example.com',
                              isPassword: false,
                              controller: emailInputController,
                              showPassword: false,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            RecoverPasswordCubit.get(context)
                                .sendEmail(email: emailInputController.text);
                          }
                        },
                        child: Container(
                          height: 7.h,
                          decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Center(
                            child: Text(
                              'Reset password',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
