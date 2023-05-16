import 'dart:convert';

TermsAndPolicies termsAndPoliciesFromJson(String str) => TermsAndPolicies.fromJson(json.decode(str));

String termsAndPoliciesToJson(TermsAndPolicies data) => json.encode(data.toJson());

class TermsAndPolicies {
  int status;
  bool success;
  String message;
  List<Datum> data;

  TermsAndPolicies({
    required this.status,
    required this.success,
    required this.message,
    required this.data,
  });

  factory TermsAndPolicies.fromJson(Map<String, dynamic> json) => TermsAndPolicies(
    status: json["status"],
    success: json["success"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "success": success,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String name;
  String? content;
  int isRequire;

  Datum({
    required this.id,
    required this.name,
    this.content,
    required this.isRequire,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    content: json["content"],
    isRequire: json["is_require"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "content": content,
    "is_require": isRequire,
  };
}
