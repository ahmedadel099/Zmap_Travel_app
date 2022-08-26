import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_zmap/core_view_model/service/database/favorite_database_helper.dart';
import 'package:demo_zmap/model/favorite_trips_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FavoriteViewModel extends GetxController{

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<FavoriteTripsModel> _favoriteitemModel =[];
  List<FavoriteTripsModel> get favoriteitemModel => _favoriteitemModel;


  FavoriteViewModel(){
    // getAllFavItems();
  }

  // getAllFavItems() async{
  //   _loading.value = true;
  //   var dbHelper = FavoriteDatabaseHelper.db;
  //   _favoriteitemModel = (await dbHelper.getAllFavItems()).cast<FavoriteTripsModel>();
  //   print(_favoriteitemModel.length);
  //
  //   _loading.value = false;
  //   update();
  // }


  

  addToFavorite(FavoriteTripsModel favoriteTripsModel)async{
    _loading.value = true;
    await FirebaseFirestore.instance.collection
      ('Users').doc(FirebaseAuth.instance.currentUser.uid)
        .collection('favorites')
      // .doc('id').set({'id':''});

    .doc('fTHTqZH2znbAL7DFtGlU').set(
        {'id':'fTHTqZH2znbAL7DFtGlU'});
    _loading.value = false;
    update();
  }



}