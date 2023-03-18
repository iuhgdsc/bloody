// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/model/user.dart';

class EventRegis {
  CenterBlood? centerBlood;
  String? timeChoose;
  List<dynamic>? answers = [];
  User? user;
  String? description;
  EventRegis({
    this.centerBlood,
    this.timeChoose,
    this.answers,
    this.user,
    this.description,
  });

  EventRegis copyWith({
    CenterBlood? centerBlood,
    String? timeChoose,
    List<String>? answers,
    User? user,
    String? description,
  }) {
    return EventRegis(
      centerBlood: centerBlood ?? this.centerBlood,
      timeChoose: timeChoose ?? this.timeChoose,
      answers: answers ?? this.answers,
      user: user ?? this.user,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centerBlood': centerBlood?.toMap(),
      'timeChoose': timeChoose,
      'answers': answers,
      'user': user?.toMap(),
      'description': description,
    };
  }

  factory EventRegis.fromMap(Map<String, dynamic> map) {
    return EventRegis(
      centerBlood: map['centerBlood'] != null
          ? CenterBlood.fromMap(map['centerBlood'] as Map<String, dynamic>)
          : null,
      timeChoose:
          map['timeChoose'] != null ? map['timeChoose'] as String : null,
      answers: map['answers'] != null
          ? (map['answers'] as List<dynamic>)
              .map((answer) => answer.toString())
              .toList()
          : null,
      user: map['user'] != null
          ? User.fromMap(map['user'] as Map<String, dynamic>)
          : null,
      description:
          map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventRegis.fromJson(String source) =>
      EventRegis.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EventRegis(centerBlood: $centerBlood, timeChoose: $timeChoose, answers: $answers, user: $user, description: $description)';
  }
}
