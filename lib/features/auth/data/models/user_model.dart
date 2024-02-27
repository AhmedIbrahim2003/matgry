// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserData {
  String? email;
  bool? isVerified;
  String? name;
  String? uId;

  UserData({
    this.email,
    this.isVerified,
    this.name,
    this.uId,
  });

  UserData.fromJson(Map<String, dynamic>? json) {
    email = json!['email'];
    isVerified = json['isVerified'];
    name = json['name'];
    uId = json['uId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['isVerified'] = isVerified;
    data['name'] = name;
    data['uId'] = uId;
    return data;
  }

  bool checkIfExests(String? checkUId) {
    if (uId != checkUId) {
      return true;
    } else {
      return false;
    }
  }
}
