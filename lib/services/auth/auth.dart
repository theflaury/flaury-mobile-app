import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flaury/app/routes/app_pages.dart';
import 'package:flaury/services/auth/exceptions.dart';
import 'package:get/get.dart';

class Auth extends GetxController {
  static Auth get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration (seconds: 6) );
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAllNamed(Routes.SIGNIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }

  }

  // FOR SIGN UP
    Future<void> createUserWithEmailAndPassword(String email, String password) async {
      try {
        await _auth.createUserWithEmailAndPassword(
          email: email, 
          password: password,
        );
        firebaseUser.value != null ? Get.offAllNamed(Routes.HOME) : Get.offAllNamed(Routes.SIGNIN);
      } on FirebaseAuthException catch (e) {
        final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
        print('FIREBASE AUTH EXCEPTION: ${ex.message}');
        throw ex;
      } catch (_) {
        final ex = SignUpWithEmailAndPasswordFailure();
        print('EXCEPTION: ${ex.message}');
        throw ex;
      }
    }

  // Functions for Login
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (_) {}

    Future<void> logout() async {
      await _auth.signOut();
    }
  }

  

  

}
