import 'dart:convert';

CommonPostRequestModel commonPostRequestModelFromJson(String str) => CommonPostRequestModel.fromJson(json.decode(str));

String commonPostRequestModelToJson(CommonPostRequestModel data) => json.encode(data.toJson());

class CommonPostRequestModel {
  CommonPostRequestModel({this.token, this.error});

  CommonPostRequestModel.fromJson(dynamic json) {
    token = json['token'];
    error = json['error'];
  }

  String? token;
  String? error;

  CommonPostRequestModel copyWith({String? token, String? error}) =>
      CommonPostRequestModel(
        token: token ?? this.token,
        error: error ?? this.error,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['error'] = error;
    return map;
  }
}
