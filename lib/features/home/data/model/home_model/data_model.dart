import 'banner_model.dart';
import 'product_model.dart';

class DataModel {
  List<BannerModel> banners = [];
  List<ProductModel> products = [];

  DataModel.fromJson(Map<String, dynamic> json) {
    json['banners'].forEach((banner) {
      banners.add(BannerModel.fromJson(banner));
    });

    json['products'].forEach((product) {
      products.add(ProductModel.fromJson(product));
    });
  }
}

/* DataModel(
        banners: (json['banners'])
            ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        products: (json['products'] as List<dynamic>?)
            ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ); */
