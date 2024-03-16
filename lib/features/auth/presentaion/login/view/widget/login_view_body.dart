import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/auth/presentaion/login/view%20model/login%20cubit/login_cubit.dart';
import 'package:matgry/features/auth/presentaion/login/view%20model/login%20cubit/login_states.dart';
import 'package:matgry/features/auth/presentaion/register/view/register_view.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constant.dart';
import '../../../../../home/presentaion/view/main_page.dart';
import '../../../recover password/view/recover_password_view.dart';
import '../../../register/view/widget/my_input_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController emailInputController = TextEditingController();
    TextEditingController passwordInputController = TextEditingController();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginErrorState || state is LoginWithGoogleErrorState) {
            final snackBar = SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message: state is LoginErrorState
                    ? state.error
                    : state is LoginWithGoogleErrorState
                        ? state.error
                        : '',
                contentType: ContentType.failure,
              ),
            );

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          } else if (state is LoginSuccessState ||
              state is LoginWithGoogleSuccessState) {
            myPushReplacmentNavigator(
                context: context, destination: const MainPage());
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
                        'Hello Again!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 27.sp),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Fill your details or continue with\nsocial media',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: lightSupTextColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4.h),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            MyInputTextForm(
                              title: 'Email Address',
                              inputHint: 'email@example.com',
                              isPassword: false,
                              controller: emailInputController,
                              showPassword: false,
                            ),
                            const SizedBox(height: 30),
                            MyInputTextForm(
                              title: 'Password',
                              inputHint: 'Enter Your Password',
                              isPassword: true,
                              controller: passwordInputController,
                              showPassword:
                                  LoginCubit.get(context).showpassword,
                              showPasswordfunction: () {
                                LoginCubit.get(context)
                                    .changeShowPasswordState();
                              },
                              showPaswordIcon: Icon(
                                  LoginCubit.get(context).showPasswordIcon),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              myPushNavigator(
                                context: context,
                                destination: const RecoverPasswordView(),
                              );
                            },
                            child: Text(
                              'Recovery Password',
                              style: TextStyle(
                                color: lightSupTextColor,
                                fontFamily: 'Poppins',
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            LoginCubit.get(context).loginUser(
                              email: emailInputController.text,
                              password: passwordInputController.text,
                            );
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
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 250),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'New User?',
                          ),
                          TextButton(
                            onPressed: () {
                              myPushReplacmentNavigator(
                                context: context,
                                destination: const RegisterView(),
                              );
                            },
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      )
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
