import 'package:flutter/material.dart';

class Emergency_ToExport {
  final String id;
  final String name;
  final String image;
  final String blood_group;
  final String address;
  final String time_ago;
  bool isSuitable = true;
  final String description;
  final String avatar;

  Emergency_ToExport(
      {required this.id,
      required this.name,
      required this.image,
      required this.blood_group,
      required this.address,
      required this.time_ago,
      required this.isSuitable,
      required this.description,
      required this.avatar});
}
