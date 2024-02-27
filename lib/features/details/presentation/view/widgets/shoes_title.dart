import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../../../../../gen/fonts.gen.dart';

class ShoesTitle extends StatelessWidget {
  const ShoesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nike Air Max 270 Essential',
          style: TextStyle(
            fontFamily: FontFamily.raleway,
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Men\'s Shoes',
            style: TextStyle(
              fontFamily: FontFamily.raleway,
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: HexColor('#707B81'),
            ),
          ),
        ),
        Text(
          '\$179.39',
          style: TextStyle(
            fontFamily: FontFamily.poppins,
            fontWeight: FontWeight.w600,
            fontSize: 22.sp,
          ),
        )
      ],
    );
  }
}
