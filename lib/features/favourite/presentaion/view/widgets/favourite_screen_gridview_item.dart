import 'package:flutter/material.dart';
import 'package:overflow_text_animated/src.dart';

import '../../../../../core/shared/widgets/shoes_photo_widget.dart';
import '../../../data/model/favourite_model/fav_data.dart';

class FavouriteGridViewItem extends StatelessWidget {
  const FavouriteGridViewItem({
    super.key,
    required this.favouriteProduct,
  });

  final FavData favouriteProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShoesPhotoWidget(
              photoPath: favouriteProduct.product!.image!,
              height: 115,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 130,
                      child: OverflowTextAnimated(
                        text: favouriteProduct.product!.name!,
                        style: const TextStyle(
                          color: Color(0xFF6A6A6A),
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                        ),
                        curve: Curves.linear,
                        animation: OverFlowTextAnimations.infiniteLoop,
                        animateDuration: const Duration(milliseconds: 300),
                        delay: const Duration(milliseconds: 250),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '${favouriteProduct.product!.price} E£',
                      style: const TextStyle(
                        color: Color(0xFF2B2B2B),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
