import 'data.dart';

class HomeModel {

  Data? data;

  HomeModel({ this.data});

  @override
  String toString() {
    return 'HomeModel(status: data: $data)';
  }

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(

        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };
}
