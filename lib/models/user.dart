// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
//  final String valid;
  final String id;
  final String name;
  final String email;
  final String password;
  final String occupation;
  final String experience;
  final String writer;
  final String explain;
  final String location;
  final String skills;
  final String portfolio;
  final String feedback;
  final String cost;
  User({
    // required this.valid,
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.occupation,
    required this.experience,
    required this.writer,
    required this.explain,
    required this.location,
    required this.skills,
    required this.portfolio,
    required this.feedback,
    required this.cost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      //'valid': valid,
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'occupation': occupation,
      'experience': experience,
      'writer': writer,
      'explain': explain,
      'location': location,
      'skills': skills,
      'portfolio': portfolio,
      'feedback': feedback,
      'cost': cost,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
   //   valid: map['valid'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      occupation: map['occupation'] as String,
      experience: map['experience'] as String,
      writer: map['writer'] as String,
      explain: map['explain'] as String,
      location: map['location'] as String,
      skills: map['skills'] as String,
      portfolio: map['portfolio'] as String,
      feedback: map['feedback'] as String,
      cost: map['cost'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
