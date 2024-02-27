import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constant.dart';

class MyInputTextForm extends StatelessWidget {
  const MyInputTextForm({
    super.key,
    required this.title,
    required this.inputHint,
    required this.isPassword,
    required this.showPassword,
    required this.controller,
    this.showPasswordfunction,
    this.showPaswordIcon,
  });

  final String title;
  final String inputHint;
  final bool isPassword;
  final bool showPassword;
  final TextEditingController? controller;
  final VoidCallback? showPasswordfunction;
  final Widget? showPaswordIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
          ),
          SizedBox(height: 1.h),
          Container(
            decoration: BoxDecoration(
              color: textFormFieldColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: TextFormField(
                  controller: controller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '$title can\'t be empty';
                    } else if (isPassword) {
                      if (value.length < 6) {
                        return 'Password can\'t be than 6 characters';
                      } else {
                        return null;
                      }
                    } else {
                      return null;
                    }
                  },
                  cursorColor: Colors.black,
                  obscureText: isPassword ? !showPassword : false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusColor: Colors.black,
                    hintText: inputHint,
                    suffixIcon: isPassword
                        ? IconButton(
                            splashRadius: 1,
                            icon: showPaswordIcon!,
                            onPressed: showPasswordfunction!,
                          )
                        : null,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
