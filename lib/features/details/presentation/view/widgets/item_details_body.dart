// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shop_app/gen/assets.gen.dart';
import 'package:nike_shop_app/gen/fonts.gen.dart';

import '../../../../../constant.dart';
import 'details_custom_appbar.dart';
import 'other_items.dart';
import 'shoes_photo.dart';
import 'shoes_title.dart';

class ItemDetailsBody extends StatelessWidget {
  const ItemDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomDetailsAppBar(),
            const SizedBox(height: 15),
            const ShoesTitle(),
            const Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ShoesPhoto(),
                Positioned(
                  bottom: 50,
                  left: 3,
                  child: OtherProducts(),
                ),
              ],
            ),
            const Text(
              'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike',
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                color: Color(0xff707B81),
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 3,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Read More',
                  style: TextStyle(
                    color: blueColor,
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class ItemDetailsBottom extends StatelessWidget {
  const ItemDetailsBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'ItemDetails',
            backgroundColor: const Color(0xffD9D9D9).withOpacity(0.4),
            elevation: 0,
            onPressed: () {},
            child: SvgPicture.asset(
              Assets.images.home.favoriteicon,
              color: Colors.black,
            ),
          ),
          Container(
            width: 208,
            height: 50,
            decoration: BoxDecoration(
                color: blueColor, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.images.home.cartlogo,
                  color: Colors.white,
                ),
                const SizedBox(width: 12),
                const Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
