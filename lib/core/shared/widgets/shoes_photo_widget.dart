// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ShoesPhotoWidget extends StatelessWidget {
  ShoesPhotoWidget({
    super.key,
    required this.photoPath,
    this.width = 120,
    this.height = 70,
    this.rotation = -0.30,
    this.padding = const EdgeInsets.only(right: 16),
  });

  String photoPath;
  double width;
  double height;
  double rotation;
  EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(-3.5)
        ..rotateZ(rotation),
      child: Padding(
        padding: padding,
        child: Image.asset(
          photoPath,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
