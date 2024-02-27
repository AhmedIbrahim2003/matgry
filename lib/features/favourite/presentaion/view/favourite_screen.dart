// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/shared/widgets/shoes_photo_widget.dart';
import '../../../../gen/assets.gen.dart';
import 'widgets/favourite_custom_appbar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomFavouriteAppBar(),
              FavouriteGridView(),
              SizedBox(height: 106)
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteGridView extends StatelessWidget {
  const FavouriteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 21,
          mainAxisSpacing: 20,
          childAspectRatio: 2 / 2.4,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
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
                  SvgPicture.asset(
                    Assets.images.home.favoriteicon,
                    color: Colors.black,
                  ),
                  ShoesPhotoWidget(
                    photoPath: Assets.images.home.nikeshoes1.path,
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BEST SELLER',
                            style: TextStyle(
                              color: Color(0xFF0D6EFD),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.33,
                            ),
                          ),
                          Text(
                            'Nike Jordan',
                            style: TextStyle(
                              color: Color(0xFF6A6A6A),
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 1.25,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '\$302.00',
                            style: TextStyle(
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
        },
      ),
    );
  }
}
