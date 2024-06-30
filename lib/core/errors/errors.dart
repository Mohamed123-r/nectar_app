class Errors {
  Errors({
      this.confirmPassword,});

  Errors.fromJson(dynamic json) {
    confirmPassword = json['ConfirmPassword'] != null ? json['ConfirmPassword'].cast<String>() : [];
  }
  List<String>? confirmPassword;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ConfirmPassword'] = confirmPassword;
    return map;
  }

}