import 'data.dart';

class FavouriteModel {
  bool? status;
  dynamic message;
  Data? data;

  FavouriteModel({this.status, this.message, this.data});

  factory FavouriteModel.fromJson(Map<String, dynamic> json) => FavouriteModel(
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
