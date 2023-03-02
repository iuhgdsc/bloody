// ignore_for_file: public_member_api_docs, sort_constructors_first
class CenterBlood {
  String? id;
  String? name;
  String? image;
  String? address;
  String? date;
  bool? isJoined = false;

  CenterBlood(
      {this.id, this.name, this.image, this.address, this.date, this.isJoined});

  @override
  String toString() {
    return 'CenterBlood(id: $id, name: $name, image: $image, address: $address, date: $date, isJoined: $isJoined)';
  }
}
