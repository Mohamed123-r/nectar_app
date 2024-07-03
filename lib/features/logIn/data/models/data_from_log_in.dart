import 'package:nectar/core/api/end_point.dart';

class DataFromLogIn{
  DataFromLogIn({
      this.isAuthenticated, 
      this.id, 
      this.email, 
      this.username, 
      this.token,});

  DataFromLogIn.fromJson(dynamic json) {
    isAuthenticated = json['isAuthenticated'];
    id = json[ApiKeys.id];
    email = json[ApiKeys.email];
    username = json[ApiKeys.username];
    token = json[ApiKeys.token];
  }
  bool? isAuthenticated;
  String? id;
  String? email;
  String? username;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAuthenticated'] = isAuthenticated;
    map[ApiKeys.id] = id;
    map[ApiKeys.email] = email;
    map[ApiKeys.username] = username;
    map[ApiKeys.token] = token;
    return map;
  }

}