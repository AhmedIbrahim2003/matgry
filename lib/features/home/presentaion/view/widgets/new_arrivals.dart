import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:matgry/features/home/data/model/home_model/banner_model.dart';

import '../../../../../constant.dart';
import '../../../../../gen/fonts.gen.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key, required this.bannersList});
  final List<BannerModel> bannersList;

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
              ImageSlideshow(
                indicatorColor: Colors.blue,
                autoPlayInterval: 3000,
                isLoop: true,
                children: List.generate(
                  bannersList.length,
                  (index) {
                    return CachedNetworkImage(
                      imageUrl: bannersList[index].image!,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => const CardLoading(
                        height: 100,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        margin: EdgeInsets.only(bottom: 10),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
