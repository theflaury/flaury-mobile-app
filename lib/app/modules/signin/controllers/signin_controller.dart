import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController
  final RegExp passwordValid =
      RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  var isPasswordHidden = true.obs;
  final GlobalKey<FormState> LoginformKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  var email = ''.obs;
  var password = ''.obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  // Validate Email
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter valid email';
    }
    return null;
  }

  // Validate Password with capital letter , small letter , number and special character and minimum length of 8
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    } else if (!passwordValid.hasMatch(value) || value.length < 8) {
      return 'Password Must Not Be Less Than 8 Characters \nPassword must contain at least one uppercase,\nlowercase,number,and special character';
    }
    return null;
  }

  // validate login form
  void login() {
    final isValid = LoginformKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    LoginformKey.currentState!.save();
  }

  void increment() => count.value++;
}
