import 'data.dart';

class CategoriesModel {
  bool? status;
  dynamic message;
  Data? data;

  CategoriesModel({this.status, this.message, this.data});

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
        status: json['status'] as bool?,
        message: json['message'] as dynamic,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
