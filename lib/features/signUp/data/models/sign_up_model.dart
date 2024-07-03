import 'data_from_sign_up.dart';

class SignUpModel {
  SignUpModel({
      this.statusCode, 
      this.isSuccess, 
      this.message, 
      this.data,});

  SignUpModel.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    isSuccess = json['isSuccess'];
    message = json['message'];
    data = json['data'] != null ? DataFromSignUp.fromJson(json['data']) : null;
  }
  num? statusCode;
  bool? isSuccess;
  String? message;
  DataFromSignUp? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    map['isSuccess'] = isSuccess;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}