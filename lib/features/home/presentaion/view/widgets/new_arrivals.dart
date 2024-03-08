import 'package:flutter/material.dart';
import 'package:matgry/gen/assets.gen.dart';

import '../../../../../constant.dart';
import '../../../../../gen/fonts.gen.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arrivals',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: FontFamily.raleway,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 12,
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w500,
                        height: 1.33,
                      ),
                    ),
                  )
                ],
              ),
              Image.asset(
                Assets.images.home.shoesBanner.path,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
