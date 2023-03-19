// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Message {
  String? title;
  String? body;
  DateTime? createdAt;
  String? id;
  String? phone;
  Message({
    this.title,
    this.body,
    this.createdAt,
    this.id,
    this.phone,
  });

  Message copyWith({
    String? title,
    String? body,
    DateTime? createdAt,
    String? id,
    String? phone,
  }) {
    return Message(
      title: title ?? this.title,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'id': id,
      'phone': phone,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
      createdAt: DateTime.parse(map['createdAt'] as String),
      id: map['id'] != null ? map['id'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Message(title: $title, body: $body, createdAt: $createdAt, id: $id, phone: $phone)';
  }

  @override
  bool operator ==(covariant Message other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.body == body &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        body.hashCode ^
        createdAt.hashCode ^
        id.hashCode ^
        phone.hashCode;
  }
}
