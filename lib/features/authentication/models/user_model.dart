class UserModel {
  String? name;
  String? email;
  String? profileImage;
  String? address;
  String? phone;

  UserModel({
    this.name,
    this.email,
    this.profileImage,
    this.phone,
    this.address,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['fullName'];
    email = json['email'];
    profileImage = json['profileImage'];
    phone = json['phone'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['profileImage'] = profileImage;
    data['address'] = address;

    return data;
  }
}
