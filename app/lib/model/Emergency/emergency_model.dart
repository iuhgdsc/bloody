import 'dart:convert';

class EmergencyModel {
  String? id;
  String? name;
  String? image;
  String? bloodGroup;
  String? address;
  String? timeAgo;
  EmergencyModel({
    this.id,
    this.name,
    this.image,
    this.bloodGroup,
    this.address,
    this.timeAgo,
  });

  EmergencyModel copyWith({
    String? id,
    String? name,
    String? image,
    String? bloodGroup,
    String? address,
    String? timeAgo,
  }) {
    return EmergencyModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      address: address ?? this.address,
      timeAgo: timeAgo ?? this.timeAgo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'bloodGroup': bloodGroup,
      'address': address,
      'timeAgo': timeAgo,
    };
  }

  factory EmergencyModel.fromMap(Map<String, dynamic> map) {
    return EmergencyModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      bloodGroup:
          map['bloodGroup'] != null ? map['bloodGroup'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      timeAgo: map['timeAgo'] != null ? map['timeAgo'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmergencyModel.fromJson(String source) =>
      EmergencyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EmergencyModel(id: $id, name: $name, image: $image, bloodGroup: $bloodGroup, address: $address, timeAgo: $timeAgo)';
  }

  @override
  bool operator ==(covariant EmergencyModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.bloodGroup == bloodGroup &&
        other.address == address &&
        other.timeAgo == timeAgo;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        bloodGroup.hashCode ^
        address.hashCode ^
        timeAgo.hashCode;
  }
}
