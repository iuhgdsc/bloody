import 'package:bloody/screens/screen3.dart';
import 'package:bloody/screens/screen5.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
                        MaterialPageRoute(builder: (context) => Screen3())),
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined, size: 30,),
                  color: const Color(0xFF333335)),
              SizedBox(width: 55,),
              Text(
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
              ],
            ),
          ),
          SizedBox(height: 45,),
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/images/image 12.png",
            ),
            radius: 80,
          ),
          SizedBox(height: 40,),
          Text(
            "Hướng dẫn",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 280,
            height: 121,
            child: Column(
              children: [
                Text(
                  "1. Giữ điện thoại ổn định và thẳng khuôn mặt.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  "2. Điều chỉnh để khuôn mặt nằm giữa vòng tròn.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  "3. Thực hiện quay trái, phải, nhìn thẳng để hoàn thành xác thực khuôn mặt.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            )
          ),
          ElevatedButton(
            style: buttonPrimary,
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen5())),
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
              onPressed: (){},
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
