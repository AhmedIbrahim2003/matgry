import 'package:flutter/material.dart';

import 'widget/cart_custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cartCustomAppbar(context),
    );
  }
}


