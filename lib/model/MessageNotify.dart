import 'package:flutter/material.dart';

class TinNhan {
  final String image;
  final String title;
  final String description;

  TinNhan({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<TinNhan> listMessage = [
  TinNhan(
    image: "assets/images/huyethoc.png",
    title: "Bệnh viện Chợ Rẫy",
    description:
        "Bạn đã đăng ký tham gia hiến máu tình nguyện ngày 01/10/2022 tại Điểm hiến bệnh viện Chợ ...",
  ),
  TinNhan(
    image: "assets/images/huyethoc.png",
    title: "Bệnh viện Huyết Học Truyền Máu Trung Ương",
    description:
        "Bạn đã tham gia hiến máu tình nguyện thành công ngày 01/03/2022 tại Bệnh viện Huyết Học Truyền ...",
  ),
];
