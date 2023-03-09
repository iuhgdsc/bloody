import 'dart:convert';

class User {
  String? userName;
  String? phone;
  String? cccd;
  String? address;
  User({
    this.userName,
    this.phone,
    this.cccd,
    this.address,
  });

  User copyWith({
    String? userName,
    String? phone,
    String? cccd,
    String? address,
  }) {
    return User(
      userName: userName ?? this.userName,
      phone: phone ?? this.phone,
      cccd: cccd ?? this.cccd,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'phone': phone,
      'cccd': cccd,
      'address': address,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userName: map['userName'] != null ? map['userName'] as String : null,
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
    return 'User(userName: $userName, phone: $phone, cccd: $cccd, address: $address)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.userName == userName &&
        other.phone == phone &&
        other.cccd == cccd &&
        other.address == address;
  }

  @override
  int get hashCode {
    return userName.hashCode ^
        phone.hashCode ^
        cccd.hashCode ^
        address.hashCode;
  }
}
