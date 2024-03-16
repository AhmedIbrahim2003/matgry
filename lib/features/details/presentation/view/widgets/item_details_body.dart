// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matgry/gen/assets.gen.dart';
import 'package:matgry/gen/fonts.gen.dart';

import '../../../../../constant.dart';
import '../../../../../core/shared/widgets/shoes_photo_widget.dart';
import '../../../../home/model/home_model/product_model.dart';
import 'details_custom_appbar.dart';
import 'other_items.dart';
import 'item_title.dart';

class ItemDetailsBody extends StatefulWidget {
  const ItemDetailsBody({super.key, required this.product});
  final ProductModel product;

  @override
  State<ItemDetailsBody> createState() => _ItemDetailsBodyState();
}

class _ItemDetailsBodyState extends State<ItemDetailsBody> {
  bool showMore = false;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          const CustomDetailsAppBar(),
          const SizedBox(height: 15),
          ItemTitle(product: widget.product),
          Column(
            children: [
              ShoesPhotoWidget(
                photoPath: widget.product.image!,
                width: 260,
                height: 280,
                padding: const EdgeInsets.only(bottom: 20),
              ),
              OtherProducts(
                product: widget.product,
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'Description:',
            style: TextStyle(
              fontFamily: FontFamily.raleway,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            widget.product.description!,
            style: const TextStyle(
              fontFamily: FontFamily.poppins,
              color: Color(0xff707B81),
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: showMore ? 250 : 3,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                setState(() {
                  showMore = !showMore;
                });
              },
              child: Text(
                showMore ? 'Show Less' : 'Show More',
                style: TextStyle(
                  color: blueColor,
                  fontFamily: FontFamily.poppins,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
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
