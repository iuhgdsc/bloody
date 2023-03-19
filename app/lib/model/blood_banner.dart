import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CenterBlood {
  String? id;
  String? name;
  String? image;
  String? address;
  String? date;
  bool? isJoined = false;
  String? bloodType;
  CenterBlood({
    this.id,
    this.name,
    this.image,
    this.address,
    this.date,
    this.isJoined,
    this.bloodType,
  });

  CenterBlood copyWith({
    String? id,
    String? name,
    String? image,
    String? address,
    String? date,
    bool? isJoined,
    String? bloodType,
  }) {
    return CenterBlood(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      address: address ?? this.address,
      date: date ?? this.date,
      isJoined: isJoined ?? this.isJoined,
      bloodType: bloodType ?? this.bloodType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'address': address,
      'date': date,
      'isJoined': isJoined,
      'bloodType': bloodType,
    };
  }

  factory CenterBlood.fromMap(Map<String, dynamic> map) {
    return CenterBlood(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      isJoined: map['isJoined'] != null ? map['isJoined'] as bool : null,
      bloodType: map['bloodType'] != null ? map['bloodType'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CenterBlood.fromJson(String source) =>
      CenterBlood.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant CenterBlood other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.address == address &&
        other.date == date &&
        other.isJoined == isJoined &&
        other.bloodType == bloodType;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        address.hashCode ^
        date.hashCode ^
        isJoined.hashCode ^
        bloodType.hashCode;
  }

  @override
  String toString() {
    return 'CenterBlood(id: $id, name: $name, image: $image, address: $address, date: $date, isJoined: $isJoined, bloodType: $bloodType)';
  }
}
