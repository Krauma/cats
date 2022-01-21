import 'dart:convert';

List<Cat> catsFromJson(String str) =>
    List<Cat>.from(json.decode(str).map((x) => Cat.fromJson(x)));

class Cat {
  String id;
  String url;

  Cat({
    required this.id,
    required this.url,
  });

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(id: json['id'], url: json['url']);
  }
}
