class CreatepassModel {
  CreatepassModel({
    this.status,
     this.message,
  });
    String ?status;
    String ?message;

  CreatepassModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    return _data;
  }
}