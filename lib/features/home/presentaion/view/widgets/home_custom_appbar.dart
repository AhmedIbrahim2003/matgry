import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant.dart';
import '../../../../../gen/assets.gen.dart';

AppBar homeCustomAppBar(bool checkCart) {
  return AppBar(
    backgroundColor: scaffoldGreyBackGround,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SvgPicture.asset(
        Assets.images.home.appbaricon,
      ),
    ),
    leadingWidth: 65,
    title: Center(
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            child: Text(
              'Explore',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 1,
            left: 1,
            child: SvgPicture.asset(
              Assets.images.onboarding.textHighlight1,
              color: Colors.black,
              width: 18,
              height: 19,
            ),
          ),
        ],
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: 44,
          height: 44,
          padding: const EdgeInsets.all(10),
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: Center(
            child: Stack(
              children: [
                SvgPicture.asset(Assets.images.home.cartlogo),
                checkCart
                    ? Positioned(
                        top: 3,
                        right: 1,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      )
                    : Positioned(
                        top: 3,
                        right: 1,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
