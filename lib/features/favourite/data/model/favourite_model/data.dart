import 'fav_data.dart';

class Data {
  List<FavData>? data;
  int? total;

  Data({
    this.data,
    this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => FavData.fromJson(e as Map<String, dynamic>))
            .toList(),
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'total': total,
      };
}
