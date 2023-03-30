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
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: height * 0.091,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(147, 255, 251, 255),
            border: Border.all(color: const Color.fromARGB(255, 114, 114, 114)),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8)),
          ),
          child: const Text("Military Hospital 175",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 32, 26, 26),
              )),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(147, 255, 251, 255),
            border: Border.all(color: const Color.fromARGB(255, 114, 114, 114)),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8)),
          ),
          child: const Text("Nearest to me",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 32, 26, 26),
              )),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(147, 255, 251, 255),
            border: Border.all(color: const Color.fromARGB(255, 114, 114, 114)),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8)),
          ),
          child: const Text("Latest",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromARGB(255, 32, 26, 26),
              )),
        ),
      ]),
    );
  }
}
