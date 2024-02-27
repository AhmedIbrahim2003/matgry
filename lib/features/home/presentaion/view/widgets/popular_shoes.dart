import 'package:flutter/material.dart';
import 'package:nike_shop_app/constant.dart';

import '../../../../../gen/fonts.gen.dart';
import 'popular_shoes_item_card.dart';

class PopularShoes extends StatelessWidget {
  const PopularShoes({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
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
                    'Popular Shoes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: FontFamily.raleway,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
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
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) => Row(
                    children: [
                      const ItemCard(),
                      SizedBox(
                        width: size.width / 15,
                      )
                    ],
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}