import 'package:flutter/material.dart';
import 'package:matgry/constant.dart';
import 'package:matgry/features/home/data/model/home_model/product_model.dart';

import '../../../../../gen/fonts.gen.dart';
import 'popular_items_card.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({super.key, required this.products});
  final List<ProductModel> products;

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
                    'Popular Products',
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
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2 / 2.4,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return PopularItemsCart(product: products[index],);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
