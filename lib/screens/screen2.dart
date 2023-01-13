import 'package:bloody/screens/screen1/screen1.dart';
import 'package:bloody/screens/screen3.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
                          MaterialPageRoute(builder: (context) => Screen1())),
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined, size: 30,),
                    color: const Color(0xFF333335)),
                SizedBox(width: 60,),
                Text(
                  "Thông tin cá nhân",
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
            Container(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                    labelText: "Họ tên",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                obscureText: false,
                decoration: const InputDecoration(
                    labelText: "CMND/CCCD",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3())),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3())),
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
