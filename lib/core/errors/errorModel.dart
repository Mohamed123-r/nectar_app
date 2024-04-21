class ErrorModel {
  int? status;
  String? message;

  ErrorModel({this.status, this.message});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];

    }


}
