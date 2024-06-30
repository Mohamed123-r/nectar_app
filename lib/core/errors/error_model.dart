import 'errors.dart';

class ErrorModel {
  ErrorModel({
      this.type, 
      this.title, 
      this.status, 
      this.traceId, 
      this.errors,});

  ErrorModel.fromJson(dynamic json) {
    type = json['type'];
    title = json['title'];
    status = json['status'];
    traceId = json['traceId'];
    errors = json['errors'] != null ? Errors.fromJson(json['errors']) : null;
  }
  String? type;
  String? title;
  num? status;
  String? traceId;
  Errors? errors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['title'] = title;
    map['status'] = status;
    map['traceId'] = traceId;
    if (errors != null) {
      map['errors'] = errors?.toJson();
    }
    return map;
  }

}