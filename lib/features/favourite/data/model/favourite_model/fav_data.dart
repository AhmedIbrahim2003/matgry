import 'product.dart';

class FavData {
  int? id;
  Product? product;

  FavData({this.id, this.product});

  factory FavData.fromJson(Map<String, dynamic> json) => FavData(
        id: json['id'] as int?,
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'product': product?.toJson(),
      };
}
