import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matgry/features/auth/presentaion/register/view%20model/register%20cubit/register_states.dart';
import 'package:matgry/features/home/presentaion/view/main_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constant.dart';
import '../../../login/view/login_view.dart';
import '../../view model/register cubit/register_cubit.dart';
import 'my_input_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController nameInputController = TextEditingController();
    TextEditingController emailInputController = TextEditingController();
    TextEditingController phoneInputController = TextEditingController();
    TextEditingController passwordInputController = TextEditingController();
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is RegisterErrorState ||
              state is RegisterWithGoogleErrorState) {
            final snackBar = SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message: state is RegisterErrorState
                    ? state.error
                    : state is RegisterWithGoogleErrorState
                        ? state.error
                        : '',
                contentType: ContentType.failure,
              ),
            );

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          } else if (state is RegisterSuccessState ||
              state is RegisterWithGoogleSuccessState) {
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
                        'Register Account',
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
                              title: 'Your Name',
                              inputHint: 'Write Your Name Here',
                              isPassword: false,
                              controller: nameInputController,
                              showPassword: false,
                            ),
                            SizedBox(height: 2.h),
                            MyInputTextForm(
                              title: 'Email Address',
                              inputHint: 'email@example.com',
                              isPassword: false,
                              controller: emailInputController,
                              showPassword: false,
                            ),
                            MyInputTextForm(
                              title: 'Phone Number',
                              inputHint: '01XXXXXXXXX',
                              isPassword: false,
                              controller: phoneInputController,
                              showPassword: false,
                            ),
                            SizedBox(height: 2.h),
                            MyInputTextForm(
                              title: 'Password',
                              inputHint: 'Enter Your Password',
                              isPassword: true,
                              controller: passwordInputController,
                              showPassword:
                                  RegisterCubit.get(context).showpassword,
                              showPasswordfunction: () =>
                                  RegisterCubit.get(context)
                                      .changeShowPasswordState(),
                              showPaswordIcon: Icon(
                                  RegisterCubit.get(context).showPasswordIcon),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            RegisterCubit.get(context).registerUser(
                                email: emailInputController.text,
                                password: passwordInputController.text,
                                phone: phoneInputController.text,
                                name: nameInputController.text);
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
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already Have Account?',
                          ),
                          TextButton(
                            onPressed: () {
                              myPushReplacmentNavigator(
                                context: context,
                                destination: const LoginView(),
                              );
                            },
                            child: const Text(
                              'Log In',
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
