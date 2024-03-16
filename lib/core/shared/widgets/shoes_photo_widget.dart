// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ShoesPhotoWidget extends StatelessWidget {
  ShoesPhotoWidget({
    super.key,
    required this.photoPath,
    this.width = 120,
    this.height = 70,
    this.padding = const EdgeInsets.only(right: 0),
  });

  String photoPath;
  double width;
  double height;
  EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Image.network(
        photoPath,
        width: width,
        height: height,
      ),
    );
  }
}
