class UserModel {
  String? userid;
  String? username;
  String? email;
  String? password;

  UserModel({this.userid, this.username, this.email, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    userid = json['user_id'];
    username = json['user_name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userid;
    data['user_name'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
