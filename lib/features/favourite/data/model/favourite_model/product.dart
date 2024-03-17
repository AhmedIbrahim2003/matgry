
class Product {
  int? id;
  double? price;
  double? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;

  Product({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int?,
        price: json['price'] + 0.0 as double?,
        oldPrice: json['old_price'] + 0.0 as double?,
        discount: json['discount'] as int?,
        image: json['image'] as String?,
        name: json['name'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'old_price': oldPrice,
        'discount': discount,
        'image': image,
        'name': name,
        'description': description,
      };
}
