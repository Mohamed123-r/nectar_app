class Errors {
  Errors({
      this.confirmPassword,
      this.password,});

  Errors.fromJson(dynamic json) {
    confirmPassword = json['ConfirmPassword'] != null ? json['ConfirmPassword'].cast<String>() : [];
    password = json['Password'] != null ? json['Password'].cast<String>() : [];
  }
  List<String>? confirmPassword;
  List<String>? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ConfirmPassword'] = confirmPassword;
    return map;
  }

}