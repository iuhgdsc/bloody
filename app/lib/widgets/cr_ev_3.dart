import 'package:flutter/material.dart';

List<String> notes = [
  "The most important blood groups in transfusion are the ABO blood group system and the RhD blood group system.",
  "Blood type is determined by a protein (antigen) on the surface of red blood cells. So the ABO system has A and B antigens and the RhD system has D antigens.",
  "In total, there are 30 major blood type systems. This means that a person can be A RhD positive, Kell (Kell system) positive, M and N (MNS system) positive, and Lea positive. and Leb (Lewis system) positive."
];

class CrEv3 extends StatefulWidget {
  const CrEv3({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CrEv3();
  }
}

class _CrEv3 extends State<CrEv3> with WidgetsBindingObserver {
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
