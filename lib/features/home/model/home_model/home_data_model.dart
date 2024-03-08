import 'data_model.dart';

class HomeModel {
  DataModel? data;

  HomeModel({
    this.data,
  });
  HomeModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] == null ? null : DataModel.fromJson(json['data'] as Map<String,dynamic>);
  }
  
}
