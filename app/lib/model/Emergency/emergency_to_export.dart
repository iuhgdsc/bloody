import 'dart:convert';

class EmergencyToExport {
  String? id;
  String? name;
  String? image;
  String? bloodGroup;
  String? address;
  String? timeAgo;
  bool? isSuitable = true;
  String? description;
  String? avatar;
  EmergencyToExport({
    this.id,
    this.name,
    this.image,
    this.bloodGroup,
    this.address,
    this.timeAgo,
    this.isSuitable,
    this.description,
    this.avatar,
  });

  EmergencyToExport copyWith({
    String? id,
    String? name,
    String? image,
    String? bloodGroup,
    String? address,
    String? timeAgo,
    bool? isSuitable,
    String? description,
    String? avatar,
  }) {
    return EmergencyToExport(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      address: address ?? this.address,
      timeAgo: timeAgo ?? this.timeAgo,
      isSuitable: isSuitable ?? this.isSuitable,
      description: description ?? this.description,
      avatar: avatar ?? this.avatar,
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
      'isSuitable': isSuitable,
      'description': description,
      'avatar': avatar,
    };
  }

  factory EmergencyToExport.fromMap(Map<String, dynamic> map) {
    return EmergencyToExport(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      bloodGroup:
          map['bloodGroup'] != null ? map['bloodGroup'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      timeAgo: map['timeAgo'] != null ? map['timeAgo'] as String : null,
      isSuitable: map['isSuitable'] != null ? map['isSuitable'] as bool : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmergencyToExport.fromJson(String source) =>
      EmergencyToExport.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EmergencyToExport(id: $id, name: $name, image: $image, bloodGroup: $bloodGroup, address: $address, timeAgo: $timeAgo, isSuitable: $isSuitable, description: $description, avatar: $avatar)';
  }

  @override
  bool operator ==(covariant EmergencyToExport other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.bloodGroup == bloodGroup &&
        other.address == address &&
        other.timeAgo == timeAgo &&
        other.isSuitable == isSuitable &&
        other.description == description &&
        other.avatar == avatar;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        bloodGroup.hashCode ^
        address.hashCode ^
        timeAgo.hashCode ^
        isSuitable.hashCode ^
        description.hashCode ^
        avatar.hashCode;
  }
}
