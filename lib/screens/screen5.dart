import 'package:bloody/screens/screen4.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 71,),
          Row(
            children: [
              const SizedBox(width: 24,),
              IconButton(
                  onPressed: () =>
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Screen4())),
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined, size: 30,),
                  color: const Color(0xFF333335)),
              const SizedBox(width: 55,),
              const Text(
                "Xác thực khuôn mặt",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            child: Center(
              child: new Container(
                height: 2.0,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 110,top: 60),
            child: Row(
              children: [
                const Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Icon(Icons.brightness_1,size: 15,color: Colors.black,),
              ],
            ),
          ),
          const SizedBox(height: 45,),
          const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/image 12.png",
            ),
            radius: 80,
          ),
          const SizedBox(height: 65,),
           Container(
             alignment: AlignmentDirectional.center,
             width: 246,
             child: const Text(
              "Định vị khuôn mặt của bạn trong",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
          ),
           ),
          Container(
            alignment: AlignmentDirectional.center,
            width: 246,
            child: const Text(
              "khung",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          const SizedBox(height: 90,),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen5())),
            },
            child:const Text(
              "Hoàn thành",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
