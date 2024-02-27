import 'banner.dart';
import 'product.dart';

class Data {
  List<Banner>? banners;
  List<Product>? products;

  Data({this.banners, this.products});

  @override
  String toString() {
    return 'Data(banners: $banners, products: $products)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        banners: (json['banners'] )
            ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
            .toList(),
        products: (json['products'])
            ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'banners': banners?.map((e) => e.toJson()).toList(),
        'products': products?.map((e) => e.toJson()).toList(),
      };
}
