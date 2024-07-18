// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:front_end/theme/theme.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Image.asset(
                              "images/test.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 230,
                                child: Divider(
                                  height: 5,
                                  thickness: 5,
                                  color:
                                      const Color.fromARGB(255, 89, 203, 255),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "sign in with email",
                                style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue
                                    // Bold
                                    ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 230,
                                child: Divider(
                                  height: 5,
                                  thickness: 5,
                                  color:
                                      const Color.fromARGB(255, 89, 203, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                // onChanged: (value) =>
                                // loginController.email.value = value,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: GoogleFonts.sourceSans3(
                                    color:
                                        const Color.fromARGB(255, 89, 203, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 89, 203, 255),
                                        width: 2.5),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 89, 203, 255),
                                        width: 2.5),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                // onChanged: (value) =>
                                // loginController.password.value = value,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: GoogleFonts.sourceSans3(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 89, 203, 255),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 89, 203, 255),
                                        width: 2.5),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 89, 203, 255),
                                        width: 2.5),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text("Forgot password ?",
                                        style: GoogleFonts.sourceSans3(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 89, 203, 255),
                                        )))
                              ],
                            ),
                            SizedBox(height: 20),
                            GFButton(
                                onPressed: () {},
                                text: "Login",
                                textStyle: GoogleFonts.sourceSans3(
                                  fontSize: 20,
                                  color:
                                      const Color.fromARGB(255, 89, 203, 255),
                                  fontWeight: FontWeight.bold,
                                ),
                                type: GFButtonType.transparent,
                                shape: GFButtonShape.pills),
                          ],
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Image.asset(
                        "assets/images/OIG4.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
