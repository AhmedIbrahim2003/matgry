import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:matgry/features/home/data/model/home_model/product_model.dart';

import '../../../../../core/shared/widgets/shoes_photo_widget.dart';

class OtherProducts extends StatelessWidget {
  const OtherProducts({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    MultiImageProvider multiImageProvider =
        MultiImageProvider(List.generate(product.images!.length, (index) {
      return NetworkImage(product.images![index]);
    }));

    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        
        itemCount: product.images!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                showImageViewerPager(
                  context,
                  multiImageProvider,
                  backgroundColor: Colors.black.withOpacity(0.2),
                  swipeDismissible: true,
                );
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Center(
                  child: ShoesPhotoWidget(
                    photoPath: product.images![index],
                    padding: EdgeInsets.all(5),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
