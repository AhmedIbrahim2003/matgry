import 'package:flutter/material.dart';

import '../../../../../constant.dart';

AppBar cartCustomAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: scaffoldGreyBackGround,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        myPopNavigator(context: context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
    ),
    centerTitle: true,
    leadingWidth: 70,
    title: const Text(
      'My Cart',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}
