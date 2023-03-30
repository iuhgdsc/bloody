import 'package:flutter/material.dart';

List<String> notes = [
  "Don't stay up too late the night before donating blood (sleep for at least 6 hours).",
  "Should eat light, DO NOT eat foods high in protein, high in fat.",
  "DO NOT drink alcohol or beer.",
  "Mental preparation is really comfortable.",
  "Bring identification.",
  "Drink a lot of water."
];

class CrEv1 extends StatefulWidget {
  const CrEv1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CrEv1();
  }
}

class _CrEv1 extends State<CrEv1> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 182, 27, 45),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          child: Text(" ●  " "${notes[index]}",
                              style: const TextStyle(
                                  height: 1.3,
                                  color: Color.fromARGB(255, 1, 1, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)));
                    }),
              ),
            ],
          )),
    );
  }
}
