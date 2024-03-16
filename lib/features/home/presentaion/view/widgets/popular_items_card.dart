// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matgry/features/home/model/home_model/product_model.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_cubit.dart';
import 'package:matgry/features/home/presentaion/view%20model/home%20cubit/home_states.dart';
import 'package:overflow_text_animated/overflow_text_animated.dart';

import '../../../../../constant.dart';
import '../../../../../core/shared/widgets/shoes_photo_widget.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../details/presentation/view/item_details.dart';

class PopularItemsCart extends StatefulWidget {
  const PopularItemsCart({super.key, required this.product});
  final ProductModel product;

  @override
  // ignore: no_logic_in_create_state
  State<PopularItemsCart> createState() => _PopularItemsCartState(product);
}

class _PopularItemsCartState extends State<PopularItemsCart> {
  final ProductModel product;

  _PopularItemsCartState(this.product);

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: () => myPushNavigator(
              context: context,
              destination: ItemDetails(product: widget.product)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      cubit.changeFavoriteState(productID: widget.product.id!);
                      setState(() {
                        product.inFavorites = !product.inFavorites!;
                      });
                    },
                    child: SvgPicture.asset(
                      widget.product.inFavorites!
                          ? Assets.images.home.favoriteiconfilled
                          : Assets.images.home.favoriteicon,
                      height: widget.product.inFavorites! ? 24 : null,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Hero(
                      tag: 'ProductPhoto',
                      child: ShoesPhotoWidget(
                          photoPath: widget.product.image!,
                          height: 74,
                          padding: const EdgeInsets.only(right: 16)),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'BEST SELLER',
                            style: TextStyle(
                              color: Color(0xFF0D6EFD),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.33,
                            ),
                          ),
                          OverflowTextAnimated(
                            text: widget.product.name!,
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
                          const SizedBox(height: 12.5),
                          Text(
                            '${widget.product.price} E£',
                            style: const TextStyle(
                              color: Color(0xFF2B2B2B),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.14,
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: GestureDetector(
                          onTap: () {
                            cubit.addOrRemoveFromCart(productID: product.id!);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                              color: blueColor,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
