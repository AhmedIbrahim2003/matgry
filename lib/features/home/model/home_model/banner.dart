class Banner {
  int? id;
  String? image;

  Banner({this.id, this.image});

  @override
  String toString() {
    return 'Banner(id: $id, image: $image)';
  }

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json['id'] as int?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
      };
}
