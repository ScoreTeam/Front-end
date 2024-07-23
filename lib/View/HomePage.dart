// import 'package:flutter/material.dart';
// import 'package:fluttertest/View/LoginPage.dart';
// import 'package:fluttertest/View/LoginPage2.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Homepage"),
//       ),
//       body: Center(
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // Show LoginPage as a dialog with a specific size
//                   Get.dialog(
//                     Center(
//                       child: Container(
//                         width: MediaQuery.of(context).size.width - 200,
//                         height: MediaQuery.of(context).size.width - 800,
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Login(),
//                       ),
//                     ),
//                     barrierDismissible: true,
//                   );
//                 },
//                 child: Text('Press Me'),
//               ),
//               Container(
//                 child: Text("Welcome to Score"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
