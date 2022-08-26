import 'package:demo_zmap/core_view_model/service/firestore_user.dart';
import 'package:demo_zmap/model/user_model.dart';
import 'package:demo_zmap/profile/local_storage_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogOut extends GetxController{
  UserModel _userModel;
  String name, email;

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool>  _loading = ValueNotifier(false);

  UserModel get userModel => _userModel;
  @override
  void onInit() {
    super.onInit();
    getCurrentUser();
  }

  void getCurrentUser() async {
    _loading.value = true;
    await LocalStorageData.getUser.then((value) {
      _userModel = value;
      _loading.value = false;
      update();
    });
  }
  updateCurrentUser() async {
    try {

      UserModel _currentUser = UserModel(
        userId: _userModel.userId,
        email: email,
        name: name,

      );
      await FirebaseAuth.instance.currentUser.updateEmail(email);
      FireStoreUser().addUserToFireStore(_currentUser);
      await LocalStorageData.setUser(_currentUser);
      getCurrentUser();
      Get.back();
    } catch (error) {
      String errorMessage =
      error.toString().substring(error.toString().indexOf(' ') + 1);
      Get.snackbar(
        'Failed to update..',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }


  Future<void> signOut()async{
    GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    LocalStorageData.deleteUser();
  }



}