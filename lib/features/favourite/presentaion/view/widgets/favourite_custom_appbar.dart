import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant.dart';
import '../../../../../gen/assets.gen.dart';

class CustomFavouriteAppBar extends StatelessWidget {
  const CustomFavouriteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            myPopNavigator(context: context);
          },
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 17,
              ),
            ),
          ),
        ),
        const Text(
          'Favourite',
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          width: 44,
          height: 44,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(Assets.images.home.cartlogo),
          ),
        )
      ],
    );
  }
}
