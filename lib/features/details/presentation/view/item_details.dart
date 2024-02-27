import 'package:flutter/material.dart';

import '../../../../constant.dart';
import 'widgets/item_details_body.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldGreyBackGround,
      body: const ItemDetailsBody(),
      bottomNavigationBar: ItemDetailsBottom(),
    );
  }
}
