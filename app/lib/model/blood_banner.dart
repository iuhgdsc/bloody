// ignore_for_file: public_member_api_docs, sort_constructors_first
class CenterBlood {
  final String id;
  final String name;
  final String image;
  final String address;
  final String date;
  bool isJoined = false;

  CenterBlood(
      {required this.id,
      required this.name,
      required this.image,
      required this.address,
      required this.date,
      required this.isJoined});

  @override
  String toString() {
    return 'CenterBlood(id: $id, name: $name, image: $image, address: $address, date: $date, isJoined: $isJoined)';
  }
}
