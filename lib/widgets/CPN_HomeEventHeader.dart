// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CPNHomeEventHeader extends StatefulWidget {
  const CPNHomeEventHeader({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CPNHomeEventHeader();
  }
}

class _CPNHomeEventHeader extends State<CPNHomeEventHeader>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: height * 0.091,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(147, 255, 251, 255),
              border: Border.all(
                color: Color.fromARGB(255, 114, 114, 114),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Text(
              "Bệnh viện Quân Y 175",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 32, 26, 26),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(147, 255, 251, 255),
              border: Border.all(
                color: Color.fromARGB(255, 114, 114, 114),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Text(
              "Gần tôi nhất",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 32, 26, 26),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(147, 255, 251, 255),
              border: Border.all(
                color: Color.fromARGB(255, 114, 114, 114),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Text(
              "Mới nhất",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 32, 26, 26),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
