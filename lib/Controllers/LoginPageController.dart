import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  void login() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 2)); // Simulate a network request
    isLoading.value = false;

    if (email.value == 'test@example.com' && password.value == 'password') {
      Get.snackbar('Success', 'Logged in successfully!');
      // Get.to(HomePage());
    } else {
      Get.snackbar('Error', 'Invalid email or password');
    }
  }
}
