//بسم الله الرحمن الرحيم

import 'package:demo_zmap/core_view_model/service/firestore_user.dart';
import 'package:demo_zmap/model/user_model.dart';
import 'package:demo_zmap/profile/local_storage_data.dart';
import 'package:demo_zmap/view/control_view.dart';
import 'package:demo_zmap/view/screens/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;

  String email, password, name, phoneNumber, dateOfBirth, gender;

  Rxn<User> _user = Rxn<User>();

  String get user => _user.value?.email;

  // FacebookLogin _facebookLogin = FacebookLogin();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    await _auth.signInWithCredential(credential).then((user) async {
      saveUser(user);
      Get.offAll(ControlView());
    });
  }

  void signInWithFacebookAccount() async {
    try {
      final _facebookSignIn = await FacebookAuth.instance.login();

      final _facebookAuthCredential =
          FacebookAuthProvider.credential(_facebookSignIn.accessToken.token);

      await _auth.signInWithCredential(_facebookAuthCredential).then((user) {
        saveUser(user);
      });
      Get.offAll(ControlView());
    } catch (error) {
      Get.snackbar(
        'Failed to login..',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        await FireStoreUser().getCurrentUser(value.user.uid).then((value) {
          setUser(UserModel.fromJson(value.data()));
        });
      });
      Get.offAll(ControlView());
    } catch (error) {
      print(error.toString());
      Get.snackbar(
        'Error login account',
        error.toString(),
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) async {
        saveUser(user);
      });
      Get.offAll(ControlView());
    } catch (error) {
      print(error.toString());
      Get.snackbar(
        'Error login account',
        error.toString(),
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      userId: user.user.uid,
      email: user.user.email,
      name: name == null ? user.user.displayName : name,
      pic: '',
      phoneNumber: phoneNumber,
      dateOfBirth: dateOfBirth,
      gender: gender,
    ));
  }

  void setUser(UserModel userModel) async {
    await LocalStorageData.setUser(userModel);
  }
}
