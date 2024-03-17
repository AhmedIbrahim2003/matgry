import 'package:flutter/material.dart';
import '../../../data/model/favourite_model/favorite_model.dart';
import 'favourite_screen_gridview_item.dart';

class FavouriteGridView extends StatelessWidget {
  const FavouriteGridView({super.key, required this.favouriteProduct});
  final FavouriteModel favouriteProduct;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 21,
        mainAxisSpacing: 20,
        childAspectRatio: 2 / 2.4,
      ),
      itemCount: favouriteProduct.data!.data!.length,
      itemBuilder: (context, index) {
        return FavouriteGridViewItem(
            favouriteProduct: favouriteProduct.data!.data![index]);
      },
    );
  }
}
