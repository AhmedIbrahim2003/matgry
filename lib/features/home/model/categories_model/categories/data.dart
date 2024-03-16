import 'datum.dart';

class Data {
  List<Datum>? categories;

  Data({
    this.categories,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        categories: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': categories?.map((e) => e.toJson()).toList(),
      };
}
