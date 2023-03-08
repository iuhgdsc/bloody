import 'package:bloody/model/blood_banner.dart';

class EventRegis {
  CenterBlood? centerBlood;
  String? timeChoose;
  List<String>? answers = [];

  EventRegis(
      {required this.centerBlood,
      required this.timeChoose,
      required this.answers});

  Map<String, dynamic> toJson() {
    return {
      'name': centerBlood!.name,
      'address': centerBlood!.address,
      'timeChoose': timeChoose,
      'time': centerBlood!.date,
      'answers': answers,
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
    );
  }
}
