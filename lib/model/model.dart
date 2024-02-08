// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String name;
  String mobile;
  String symptoms;
  String status;

  Posts({
    required this.name,
    required this.mobile,
    required this.symptoms,
    required this.status,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    name: json["Name"],
    mobile: json["Mobile"],
    symptoms: json["Symptoms"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "Name": name,
    "Mobile": mobile,
    "Symptoms": symptoms,
    "Status": status,
  };
}
