


class TermsPolicies {
  int? id;
  String? name;
  String? content;
  int? isRequire;

  TermsPolicies({
    this.id,
    this.name,
    this.content,
    this.isRequire,
  });

  factory TermsPolicies.fromJson(Map<String, dynamic> json) => TermsPolicies(
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
