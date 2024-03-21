import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../../../../../gen/fonts.gen.dart';
import '../../../../home/data/model/home_model/product_model.dart';

class ItemTitle extends StatelessWidget {
  const ItemTitle({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name!,
          style: TextStyle(
            fontFamily: FontFamily.raleway,
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Best Seller',
            style: TextStyle(
              fontFamily: FontFamily.raleway,
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: HexColor('#707B81'),
            ),
          ),
        ),
        Text(
          '${product.price} E£',
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
