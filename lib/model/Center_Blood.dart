import 'package:flutter/material.dart';

class CenterBlood {
  final String id;
  final String name;
  final String image;
  final String address;
  final DateTime date;
  bool isJoined = false;

  CenterBlood(
      {required this.id,
      required this.name,
      required this.image,
      required this.address,
      required this.date,
      required this.isJoined});
}
