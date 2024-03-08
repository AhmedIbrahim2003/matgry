class ProductModel {
  final int? id;
  final dynamic price;
  final dynamic oldPrice;
  final dynamic discount;
  final String? image;
  final String? name;
  final String? description;
  final dynamic images;
  final bool inFavorites;
  final bool? inCart;

  const ProductModel({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.images,
    this.inFavorites = false,
    this.inCart,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        price: (json['price']),
        oldPrice: (json['old_price']),
        discount: json['discount'],
        image: json['image'],
        name: json['name'],
        description: json['description'],
        images: json['images'],
        inFavorites: json['in_favorites'],
        inCart: json['in_cart'],
      );
}
