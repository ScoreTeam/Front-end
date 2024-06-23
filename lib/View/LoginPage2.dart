// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/button_list.dart';
// import 'package:flutter_signin_button/button_view.dart';
// import 'package:get/get.dart';
// import 'package:getwidget/components/button/gf_button.dart';

// class Login extends StatelessWidget {
//   const Login({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // color: Colors.blue,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Container(
//                     child: Center(
//                         child: Column(
//                       children: [
//                         Text("Login"),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("Login via social media"),
//                           ],
//                         ),
//                         Container(
//                           width: double.infinity - 200,
//                           // width: 200,
//                           // decoration: BoxDecoration(
//                           //     border: Border.all(
//                           //         color: Color.fromRGBO(255, 255, 255, 1),
//                           //         width: 3)),
//                           decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(50)),
//                           child: SignInButton(
//                             Buttons.Google,
//                             text: "Sign in with google",
//                             onPressed: () {
//                               print("fef");
//                             },
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Center(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 width: 200,
//                                 child: Divider(
//                                   height: 10,
//                                   thickness: 5,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text("sign in with email"),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Container(
//                                 width: 200,
//                                 child: Divider(
//                                   height: 10,
//                                   thickness: 5,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             TextField(
//                               // onChanged: (value) =>
//                                   // loginController.email.value = value,
//                               decoration: InputDecoration(
//                                 labelText: 'Email',
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             SizedBox(height: 16),
//                             TextField(
//                               // onChanged: (value) =>
//                                   // loginController.password.value = value,
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//                             Row(
//                               children: [Container(
//                                 padding: EdgeInsets.only(left: 10),
//                                 child: Text("Forgot password ?",style: TextStyle(color: const Color.fromARGB(255, 0, 140, 254)),))],
//                             ),
//                             SizedBox(height: 16),

//                              ElevatedButton(
//                               onPressed: (){},
//                                   // onPressed: loginController.isLoading.value
//                                   //     ? null
//                                   //     : loginController.login,
//                                   // child: loginController.isLoading.value
//                                   //     ? CircularProgressIndicator(
//                                   //         color: Colors.white,
//                                   //       )
//                                   //     : Text('Login'),
//                                   child: Text("Login"),
//                                 )
//                           ],
//                         ),
//                       ],
//                     )),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Column(
//                 children: [
//                   Expanded(
//                     // Make the Container fill its parent widget
//                     child: Container(
//                       color: Color.fromARGB(255, 19, 244, 86),
//                       child: Image.asset(
//                         "images/test.jpg",
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
