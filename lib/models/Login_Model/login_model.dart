class LoginModel {
  LoginModel({
    this.status,
    this.message,
    this.userData,
  });
   String ?status;
   String ?message;
   UserData ?userData;

  LoginModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    userData = UserData.fromJson(json['user_data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['user_data'] = userData!.toJson();
    return _data;
  }
}

class UserData {
  UserData({
    this.ID,
    this.Email,
    this.Username,
  });
   int ?ID;
   String ?Email;
   String ?Username;

  UserData.fromJson(Map<String, dynamic> json){
    ID = json['ID'];
    Email = json['Email'];
    Username = json['Username'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ID'] = ID;
    _data['Email'] = Email;
    _data['Username'] = Username;
    return _data;
  }
}