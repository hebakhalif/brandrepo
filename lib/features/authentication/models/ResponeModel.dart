/// message : "success"
/// user : {"name":"Abdalrhman Reda","email":"abdalrhmanr935@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTk3OTcxMDNlYzNlOWY3ZDA5MTMyOSIsIm5hbWUiOiJBYmRhbHJobWFuIFJlZGEiLCJyb2xlIjoidXNlciIsImlhdCI6MTcwNDU1NjkxNCwiZXhwIjoxNzEyMzMyOTE0fQ.7mm7o3Krv6Gg-ILFMz_j6cBe6vVlO4mjxz2qmC7FjeI"

class ResponeModel {
  ResponeModel({
    String? message,
    User? user,
    String? token,
  }) {
    _message = message;
    _user = user;
    token = token;
  }

  ResponeModel.fromJson(dynamic json) {
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? _message;
  User? _user;
  String? token;
  ResponeModel copyWith({
    String? message,
    User? user,
    String? token,
  }) =>
      ResponeModel(
        message: message ?? _message,
        user: user ?? _user,
        token: token ?? token,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = token;
    return map;
  }
}

/// name : "Abdalrhman Reda"
/// email : "abdalrhmanr935@gmail.com"
/// role : "user"

class User {
  User({
    String? name,
    String? email,
    String? role,
  }) {
    _name = name;
    _email = email;
    _role = role;
  }

  User.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _role = json['role'];
  }
  String? _name;
  String? _email;
  String? _role;
  User copyWith({
    String? name,
    String? email,
    String? role,
  }) =>
      User(
        name: name ?? _name,
        email: email ?? _email,
        role: role ?? _role,
      );
  String? get name => _name;
  String? get email => _email;
  String? get role => _role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['role'] = _role;
    return map;
  }
}
