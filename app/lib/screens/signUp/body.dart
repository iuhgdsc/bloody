// import 'package:bloody/screens/otp_login/size_config.dart';
// import 'package:flutter/material.dart';

// import '../../screens/login.dart';

// class Body extends StatelessWidget {
//   const Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: getProportionateScreenWidth(20),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(height: 71),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () => {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const Login()),
//                       ),
//                     },
//                     icon: const Icon(
//                       Icons.keyboard_arrow_left_outlined,
//                       size: 30,
//                     ),
//                     color: const Color(0xFF333335),
//                   ),
//                   const SizedBox(
//                     width: 100,
//                   ),
//                   const Text(
//                     "Đăng kí",
//                     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 25),
//               const Text(
//                 "Bạn cần đăng ký tài khoản trước khi sử dụng ứng dụng Bloody",
//                 style: TextStyle(
//                     height: 1, fontSize: 10, fontWeight: FontWeight.w400),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 90),
//                 child: Row(
//                   children: [
//                     const Icon(
//                       Icons.brightness_1,
//                       size: 15,
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       width: 25,
//                       child: Center(
//                         child: Container(
//                           height: 2.0,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                     const Icon(
//                       Icons.brightness_1,
//                       size: 15,
//                       color: Colors.grey,
//                     ),
//                     SizedBox(
//                       width: 25,
//                       child: Center(
//                         child: Container(
//                           height: 2.0,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                     const Icon(
//                       Icons.brightness_1,
//                       size: 15,
//                       color: Colors.grey,
//                     ),
//                     SizedBox(
//                       width: 25,
//                       child: Center(
//                         child: Container(
//                           height: 2.0,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                     const Icon(
//                       Icons.brightness_1,
//                       size: 15,
//                       color: Colors.grey,
//                     ),
//                     SizedBox(
//                       width: 25,
//                       child: Center(
//                         child: Container(
//                           height: 2.0,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                     const Icon(
//                       Icons.brightness_1,
//                       size: 15,
//                       color: Colors.grey,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
