import 'package:flutter/material.dart';

import '../../../../../core/shared/widgets/shoes_photo_widget.dart';
import '../../../../../gen/assets.gen.dart';

class OtherProducts extends StatelessWidget {
  const OtherProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 56,
              height: 56,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Center(
                child: ShoesPhotoWidget(
                  photoPath: Assets.images.home.nikeshoes1.path,
                  padding: const EdgeInsets.only(top: 15, right: 10),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
