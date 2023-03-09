import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/model/user.dart';

class EventRegis {
  CenterBlood? centerBlood;
  String? timeChoose;
  List<String>? answers = [];
  User? user;

  EventRegis(
      {required this.centerBlood,
      required this.timeChoose,
      required this.answers,
      User? user});

  Map<String, dynamic> toJson() {
    return {
      'name': centerBlood!.name,
      'address': centerBlood!.address,
      'timeChoose': timeChoose,
      'time': centerBlood!.date,
      'answers': answers,
      'user': user!.toJson(),
    };
  }

  factory EventRegis.fromJson(Map<String, dynamic> json) {
    return EventRegis(
      centerBlood: CenterBlood(
        name: json['name'],
        address: json['address'],
        date: json['time'],
      ),
      timeChoose: json['timeChoose'],
      answers: json['answers'],
      user: User(
        userName: json['user']['userName'],
        cccd: json['user']['cccd'],
        phone: json['user']['phone'],
        address: json['user']['address'],
      ),
    );
  }
}
