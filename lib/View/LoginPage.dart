import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/LoginPageController.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => loginController.email.value = value,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) => loginController.password.value = value,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Obx(() => ElevatedButton(
                  onPressed: loginController.isLoading.value
                      ? null
                      : loginController.login,
                  child: loginController.isLoading.value
                      ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text('Login'),
                )),
          ],
        ),
      ),
    );
  }
}
