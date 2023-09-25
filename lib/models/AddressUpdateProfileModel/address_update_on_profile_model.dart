// To parse this JSON data, do
//
//     final addressUpdateModel = addressUpdateModelFromJson(jsonString);

import 'dart:convert';

AddressUpdateModel addressUpdateModelFromJson(String str) => AddressUpdateModel.fromJson(json.decode(str));

String addressUpdateModelToJson(AddressUpdateModel data) => json.encode(data.toJson());

class AddressUpdateModel {
  List<UpdateMessage>? updateMessage;

  AddressUpdateModel({
     this.updateMessage,
  });

  factory AddressUpdateModel.fromJson(Map<String, dynamic> json) => AddressUpdateModel(
    updateMessage: List<UpdateMessage>.from(json["update_message"].map((x) => UpdateMessage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "update_message": List<dynamic>.from(updateMessage!.map((x) => x.toJson())),
  };
}

class UpdateMessage {
  String? status;
  int? userId;

  UpdateMessage({
     this.status,
     this.userId,
  });

  factory UpdateMessage.fromJson(Map<String, dynamic> json) => UpdateMessage(
    status: json["status"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "user_id": userId,
  };
}
