// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/model/user.dart';
import 'package:collection/collection.dart';

class EventRegis {
  CenterBlood? centerBlood;
  String? timeChoose;
  List<String>? answers = [];
  User? user;
  EventRegis({
    this.centerBlood,
    this.timeChoose,
    this.answers,
    this.user,
  });

  EventRegis copyWith({
    CenterBlood? centerBlood,
    String? timeChoose,
    List<String>? answers,
    User? user,
  }) {
    return EventRegis(
      centerBlood: centerBlood ?? this.centerBlood,
      timeChoose: timeChoose ?? this.timeChoose,
      answers: answers ?? this.answers,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centerBlood': centerBlood?.toMap(),
      'timeChoose': timeChoose,
      'answers': answers,
      'user': user?.toMap(),
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
          ? List<String>.from((map['answers'] as List<String>))
          : null,
      user: map['user'] != null
          ? User.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EventRegis.fromJson(String source) =>
      EventRegis.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EventRegis(centerBlood: $centerBlood, timeChoose: $timeChoose, answers: $answers, user: $user)';
  }

  @override
  bool operator ==(covariant EventRegis other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.centerBlood == centerBlood &&
        other.timeChoose == timeChoose &&
        listEquals(other.answers, answers) &&
        other.user == user;
  }

  @override
  int get hashCode {
    return centerBlood.hashCode ^
        timeChoose.hashCode ^
        answers.hashCode ^
        user.hashCode;
  }
}
