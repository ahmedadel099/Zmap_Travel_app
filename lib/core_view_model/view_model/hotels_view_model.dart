import 'package:demo_zmap/core_view_model/service/hotels_service.dart';
import 'package:demo_zmap/model/all_hotels/Hotels_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HotelsViewModel extends GetxController{

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<HotelsModel> get dahabHotelsModel => _dahabHotelsModel;
  List<HotelsModel> _dahabHotelsModel = [];

  List<HotelsModel> get sharmHotelsModel => _sharmHotelsModel;
  List<HotelsModel> _sharmHotelsModel = [];

  List<HotelsModel> get hurghadaHotelsModel => _hurghadaHotelsModel;
  List<HotelsModel> _hurghadaHotelsModel = [];

  List<HotelsModel> get marsaAlamHotelsModel => _marsaAlamHotelsModel;
  List<HotelsModel> _marsaAlamHotelsModel = [];

  List<HotelsModel> get siwaHotelsModel => _siwaHotelsModel;
  List<HotelsModel> _siwaHotelsModel = [];

  List<HotelsModel> get luxorHotelsModel => _luxorHotelsModel;
  List<HotelsModel> _luxorHotelsModel = [];

  List<HotelsModel> get aswanHotelsModel => _aswanHotelsModel;
  List<HotelsModel> _aswanHotelsModel = [];


  HotelsViewModel(){
    getDahabHotels();
    getSharmHotels();
    getHurghadaHotels();
    getMarsaAlamHotels();
    getSiwaHotels();
    getLuxorHotels();
    getAswanHotels();
  }

  getDahabHotels() async {
    _loading.value = true;
    HotelsService().getDahabHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _dahabHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getSharmHotels() async {
    _loading.value = true;
    HotelsService().getSharmHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _sharmHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getHurghadaHotels() async {
    _loading.value = true;
    HotelsService().getHurghadaHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _hurghadaHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getMarsaAlamHotels() async {
    _loading.value = true;
    HotelsService().getMarsaAlamHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _marsaAlamHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getSiwaHotels() async {
    _loading.value = true;
    HotelsService().getSiwaHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _siwaHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getLuxorHotels() async {
    _loading.value = true;
    HotelsService().getLuxorHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _luxorHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getAswanHotels() async {
    _loading.value = true;
    HotelsService().getAswanHotels().then((value){
      for (int i = 0; i < value.length; i++) {
        _aswanHotelsModel.add(HotelsModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

}