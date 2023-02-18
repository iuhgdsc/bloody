class EmergencyToExport {
  final String id;
  final String name;
  final String image;
  final String bloodGroup;
  final String address;
  final String timeAgo;
  bool isSuitable = true;
  final String description;
  final String avatar;

  EmergencyToExport(
      {required this.id,
      required this.name,
      required this.image,
      required this.bloodGroup,
      required this.address,
      required this.timeAgo,
      required this.isSuitable,
      required this.description,
      required this.avatar});
}
