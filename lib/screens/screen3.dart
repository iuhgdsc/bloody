import 'package:bloody/screens/screen2.dart';
import 'package:bloody/screens/screen4.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 71,),
          Row(
            children: [
              SizedBox(width: 24,),
              IconButton(
                  onPressed: () =>
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen2())),
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined, size: 30,),
                  color: const Color(0xFF333335)),
              SizedBox(width: 50,),
              Text(
                "Xác thực CMND/CCCD",
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
            padding: EdgeInsets.only(left: 110,top: 60),
            child: Row(
              children: [
                Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Icon(Icons.brightness_1,size: 15,color: Colors.black,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
                Container(
                  width: 25,
                  child: Center(
                    child: new Container(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Icon(Icons.brightness_1,size: 15,color: Colors.grey,),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: AlignmentDirectional.topStart,
                child: Icon(
                    Icons.add_photo_alternate_outlined
                ),
              ),
              SizedBox(width: 5,),
              Text(
                "Mặt trước",
                style: TextStyle(
                    fontWeight:FontWeight.w400,
                    fontSize: 15
                ),
              )
            ],
          ),
          Container(
            height: 140,
            width: 353,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1
              )
            ),
            child: Image.asset("assets/images/Rectangle 23.png"),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: AlignmentDirectional.topStart,
                child: Icon(
                    Icons.add_photo_alternate_outlined
                ),
              ),
              SizedBox(width: 5,),
              Text(
                "Mặt sau",
                style: TextStyle(
                    fontWeight:FontWeight.w400,
                    fontSize: 15
                ),
              )
            ],
          ),
          Container(
            height: 140,
            width: 353,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black,
                    width: 1
                )
            ),
            child: Image.asset("assets/images/Rectangle 22.png"),
          ),
          SizedBox(height: 40,),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen4())),
            },
            child:const Text(
              "Tiếp tục",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          TextButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen4())),
              },
              child: Text(
                "Để sau",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              )
          )
        ],
      ),
    );
  }
}
