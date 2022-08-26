import 'package:demo_zmap/core_view_model/service/buses_service.dart';
import 'package:demo_zmap/model/buses_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BusesViewModel extends GetxController {


  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<BusesModel> get dahabbusModel => _dahabbusModel;
  List<BusesModel> _dahabbusModel = [];

  List<BusesModel> get sharmbusModel => _sharmbusModel;
  List<BusesModel> _sharmbusModel = [];


  List<BusesModel> get hurghadabusModel => _hurghadabusModel;
  List<BusesModel> _hurghadabusModel = [];

  List<BusesModel> get marsaalambusModel => _marsaalambusModel;
  List<BusesModel> _marsaalambusModel = [];

  List<BusesModel> get siwabusModel => _siwabusModel;
  List<BusesModel> _siwabusModel = [];

  List<BusesModel> get luxorbusModel => _luxorbusModel;
  List<BusesModel> _luxorbusModel = [];

  List<BusesModel> get aswanbusModel => _aswanbusModel;
  List<BusesModel> _aswanbusModel = [];


  BusesViewModel() {
    getDahabBus();
    getSharmBus();
    getHurghadaBus();
    getMarsaalamBus();
    getSiwaBus();
    getLuxorBus();
    getAswanBus();
  }


  getDahabBus() async {
    _loading.value = true;
    BusesService().getDahabBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _dahabbusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }


  getSharmBus() async {
    _loading.value = true;
    BusesService().getSharmBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _sharmbusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }


  getHurghadaBus() async {
    _loading.value = true;
    BusesService().getHurghadaBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _hurghadabusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }


  getMarsaalamBus() async {
    _loading.value = true;
    BusesService().getMarsaalamBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _marsaalambusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }
  getSiwaBus() async {
    _loading.value = true;
    BusesService().getSiwaBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _siwabusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }
  getLuxorBus() async {
    _loading.value = true;
    BusesService().getLuxorBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _luxorbusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getAswanBus() async {
    _loading.value = true;
    BusesService().getAswanBus().then((value) {
      for (int i = 0; i < value.length; i++) {
        _aswanbusModel.add(BusesModel.
        fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }



}
