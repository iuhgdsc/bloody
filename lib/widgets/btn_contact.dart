import 'package:flutter/material.dart';

class Btn_Contact extends StatefulWidget {
  const Btn_Contact({super.key, required this.text});
  final String text;

  @override
  State<StatefulWidget> createState() {
    return _Btn_Contact();
  }
}

class _Btn_Contact extends State<Btn_Contact> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String text = widget.text;
    return Container(
      height: height * 0.08 - 10,
      padding: EdgeInsets.symmetric(horizontal: width * 0.035, vertical: 9),
      child: Container(
        width: width * 1,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 182, 27, 45),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(251, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
