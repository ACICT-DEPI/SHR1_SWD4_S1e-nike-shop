class UserModel {
  String id;
  String? Email;
  String? firstname;
  int? phoneNo;
  String? profileImage;
  String deviceToken;

  UserModel(
      {
        this.id = '',
        required this.Email,
        this.firstname,
        this.profileImage,
        this.phoneNo,
        this.deviceToken='',
      });

  UserModel.fromjson(Map<String, dynamic> json)
      : this(
    Email: json["Email"],
    id: json["id"],
    firstname: json["firstname"],
    profileImage: json["profileImage"],
    phoneNo: json["phoneNo"],
    deviceToken: json["deviceToken"],
  );

  Map<String, dynamic> Tojson() {
    return {
      "id": id,
      "Email": Email,
      "firstname": firstname,
      "profileImage": profileImage,
      "phoneNo": phoneNo,
      "deviceToken": deviceToken,
    };
  }
}
