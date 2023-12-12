import 'package:flaury/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  final RegExp passwordValid =
      RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  var isPasswordHidden = true.obs;
  final GlobalKey<FormState> signupformKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController mobileController;

  var email = ''.obs;
  var password = ''.obs;
  var name = ''.obs;
  var mobile = ''.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    mobileController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    mobileController.dispose();
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

  // write the Validate Password with capital letter , small letter , number and special character and minimum length of 8
  // String? validatePassword(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter password';
  //   } else if (value.length < 8) {
  //     return 'Password must be at least 8 characters';
  //   }
  //   return null;
  // }

  // Validate Password with capital letter , small letter , number and special character and minimum length of 8
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    } else if (!passwordValid.hasMatch(value) || value.length < 8) {
      return 'Password Must Not Be Less Than 8 Characters \nPassword must contain at least one uppercase,\nlowercase,number,and special character';
    }
    return null;
  }

  // Validate Name for a minumum of 3 and maximum length of 50
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter name';
    } else if (value.length < 3 || value.length > 50) {
      return 'Name must be between 3 and 50 characters';
    }
    return null;
  }

  // Validate Mobilenumber for a minumum and maximum length of 11
  String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter mobile number';
    } else if (value.length < 11 || value.length > 11) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  // validate signup form and move to the the next route
  void signUp() {
    final isValid = signupformKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    //signupformKey.currentState!.save();
    Get.toNamed(Routes.HOME);
  }

  void increment() => count.value++;
}
