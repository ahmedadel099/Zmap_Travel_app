import 'package:cloud_firestore/cloud_firestore.dart';

class BusesService{

  final CollectionReference _dahabBusRef =
  FirebaseFirestore.instance.collection("DAHAB BUS");


  final CollectionReference _sharmBusRef =
  FirebaseFirestore.instance.collection("SHARM BUS");


  final CollectionReference _hurghadaBusRef =
  FirebaseFirestore.instance.collection("HURGHADA BUS");


  final CollectionReference _marsaalamBusRef =
  FirebaseFirestore.instance.collection("MARSA ALAM BUS");


  final CollectionReference _siwaBusRef =
  FirebaseFirestore.instance.collection("SIWA BUS");


  final CollectionReference _luxoraBusRef =
  FirebaseFirestore.instance.collection("LUXOR BUS");


  final CollectionReference _aswanBusRef =
  FirebaseFirestore.instance.collection("ASWAN BUS");



  Future<List<QueryDocumentSnapshot>> getDahabBus() async {
    var value = await _dahabBusRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getSharmBus() async {
    var value = await _sharmBusRef.get();



    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getHurghadaBus() async {
    var value = await _hurghadaBusRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getMarsaalamBus() async {
    var value = await _marsaalamBusRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getSiwaBus() async {
    var value = await _siwaBusRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getLuxorBus() async {
    var value = await _luxoraBusRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getAswanBus() async {
    var value = await _aswanBusRef.get();

    return value.docs;
  }

}