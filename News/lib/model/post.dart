import 'dart:convert';

List<Posts> postsFromMap(String str) =>
    List<Posts>.from(json.decode(str).map((x) => Posts.fromMap(x)));

String postsToMap(List<Posts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Posts {
  Posts({
    this.id,
    this.title,
    this.description,
    this.imgUrl,
    this.date,
    this.category,
  });

  String id;
  String title;
  String description;
  String imgUrl;
  String date;
  dynamic category;

  factory Posts.fromMap(Map<String, dynamic> json) => Posts(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        imgUrl: json["imgUrl"],
        date: json["date"],
        category: json["category"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "imgUrl": imgUrl,
        "date": date,
        "category": category,
      };
}
