import 'package:demo_zmap/core_view_model/service/home_service.dart';
import 'package:demo_zmap/model/blogs_model_and_exlist/blogs_model.dart';
import 'package:demo_zmap/model/places_models_and_details/activitiy_model.dart';
import 'package:demo_zmap/model/places_models_and_details/places_model.dart';
import 'package:demo_zmap/model/trips_model_and_ex_details/trips_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<PlacesModel> get placesModel => _placesModel;
  List<PlacesModel> _placesModel = [];

  List<TripsModel> get tripsModel => _tripsModel;
  List<TripsModel> _tripsModel = [];

  List<BlogsModel> get blogsModel => _blogsModel;
  List<BlogsModel> _blogsModel = [];


  List<ActivitiesModel> get dahabActivModel => _dahabActivModel;
  List<ActivitiesModel> _dahabActivModel = [];

  List<ActivitiesModel> get sharmActivModel => _sharmActivModel;
  List<ActivitiesModel> _sharmActivModel = [];

  List<ActivitiesModel> get hurghadaActivModel => _hurghadaActivModel;
  List<ActivitiesModel> _hurghadaActivModel = [];

  List<ActivitiesModel> get marsaAlamActivModel => _marsaAlamActivModel;
  List<ActivitiesModel> _marsaAlamActivModel = [];

  List<ActivitiesModel> get siwaActivModel => _siwaActivModel;
  List<ActivitiesModel> _siwaActivModel = [];

  List<ActivitiesModel> get luxoorActivModel => _luxoorActivModel;
  List<ActivitiesModel> _luxoorActivModel = [];

  List<ActivitiesModel> get aswanActivModel => _aswanActivModel;
  List<ActivitiesModel> _aswanActivModel = [];



HomeViewModel(){
   getPlaces();
   geTrips();
   getBlogs();

   getDahabAc();
   getSharmAc();
   getHurghadaAc();
   getMarsaAlamAc();
   getSiwaAc();
   getLuxorAc();
   getAswanrAc();
}

Map<int,bool> favorites={};

  getPlaces() async {
    _loading.value = true;
   HomeService().getPlaces().then((value){
      for (int i = 0; i < value.length; i++) {
        _placesModel.add(PlacesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  geTrips() async {
    _loading.value = true;
    HomeService().geTrips().then((value){
      for (int i = 0; i < value.length; i++) {
        _tripsModel.add(TripsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getBlogs() async {
    _loading.value = true;
    HomeService().getBlogs().then((value){
      for (int i = 0; i < value.length; i++) {
        _blogsModel.add(BlogsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getDahabAc() async {
    _loading.value = true;
    HomeService().getDahabAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _dahabActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getSharmAc() async {
    _loading.value = true;
    HomeService().getSharmAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _sharmActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getHurghadaAc() async {
    _loading.value = true;
    HomeService().getHurghadaAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _hurghadaActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getMarsaAlamAc() async {
    _loading.value = true;
    HomeService().getMarsaAlamAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _marsaAlamActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getSiwaAc() async {
    _loading.value = true;
    HomeService().getSiwaAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _siwaActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getLuxorAc() async {
    _loading.value = true;
    HomeService().getLuxorAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _luxoorActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getAswanrAc() async {
    _loading.value = true;
    HomeService().getAswanrAc().then((value){
      for (int i = 0; i < value.length; i++) {
        _aswanActivModel.add(ActivitiesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }






}