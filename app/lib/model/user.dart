import 'dart:convert';

class User {
  String? name;
  String? phone;
  String? cccd;
  String? address;
  User({
    this.name,
    this.phone,
    this.cccd,
    this.address,
  });

  User copyWith({
    String? name,
    String? phone,
    String? cccd,
    String? address,
  }) {
    return User(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      cccd: cccd ?? this.cccd,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'cccd': cccd,
      'address': address,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] != null ? map['name'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      cccd: map['cccd'] != null ? map['cccd'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(name: $name, phone: $phone, cccd: $cccd, address: $address)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.phone == phone &&
        other.cccd == cccd &&
        other.address == address;
  }

  @override
  int get hashCode {
    return name.hashCode ^ phone.hashCode ^ cccd.hashCode ^ address.hashCode;
  }
}
