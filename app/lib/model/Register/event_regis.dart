class EventRegis {
  String? address;
  String? bloodGroup;
  String? time;
  List<String>? answers = [];

  EventRegis(
      {required this.address,
      required this.bloodGroup,
      required this.time,
      required this.answers});

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'bloodGroup': bloodGroup,
      'time': time,
      'answers': answers,
    };
  }

  factory EventRegis.fromJson(Map<String, dynamic> json) {
    return EventRegis(
      address: json['address'],
      bloodGroup: json['bloodGroup'],
      time: json['time'],
      answers: json['answers'],
    );
  }
}
