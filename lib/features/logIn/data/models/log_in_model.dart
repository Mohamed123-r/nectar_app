import 'package:nectar/core/api/end_point.dart';

import 'data.dart';

class LogInModel {
  LogInModel({
    this.statusCode,
    this.isSuccess,
    this.message,
    this.data,
  });

  LogInModel.fromJson(dynamic json) {
    statusCode = json[ApiKeys.statusCode];
    isSuccess = json[ApiKeys.isSuccess];
    message = json[ApiKeys.message];
    data =
        json[ApiKeys.data] != null ? Data.fromJson(json[ApiKeys.data]) : null;
  }

  num? statusCode;
  bool? isSuccess;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map[ApiKeys.statusCode] = statusCode;
    map[ApiKeys.isSuccess] = isSuccess;
    map[ApiKeys.message] = message;
    if (data != null) {
      map[ApiKeys.data] = data?.toJson();
    }
    return map;
  }
}
