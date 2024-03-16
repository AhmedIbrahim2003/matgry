import 'package:flutter/material.dart';
import 'package:matgry/features/home/model/home_model/product_model.dart';

import '../../../../constant.dart';
import 'widgets/item_details_body.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldGreyBackGround,
      body: ItemDetailsBody(product: product),
      bottomNavigationBar: ItemDetailsBottom(),
    );
  }
}
