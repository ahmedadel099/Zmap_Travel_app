import 'package:cloud_firestore/cloud_firestore.dart';

class HotelsService{

  final CollectionReference _dahabHotelsRef =
  FirebaseFirestore.instance.collection("DAHAB HOTELS");

  final CollectionReference _sharmHotelsRef =
  FirebaseFirestore.instance.collection("SHARM HOTELS");

  final CollectionReference _hurghadaHotelsRef =
  FirebaseFirestore.instance.collection("Hurghada Hotels");

 final CollectionReference _marsaAlamHotelsRef =
  FirebaseFirestore.instance.collection("Marsa Alam");

 final CollectionReference _siwaHotelsRef =
  FirebaseFirestore.instance.collection("Siwa Hotels");

 final CollectionReference _luxorHotelsRef =
  FirebaseFirestore.instance.collection("Luxor Hotels");

 final CollectionReference _aswanHotelsRef =
  FirebaseFirestore.instance.collection("Aswan Hotels");



  Future<List<QueryDocumentSnapshot>> getDahabHotels() async {
    var value = await _dahabHotelsRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getSharmHotels() async {
    var value = await _sharmHotelsRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getHurghadaHotels() async {
    var value = await _hurghadaHotelsRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getMarsaAlamHotels() async {
    var value = await _marsaAlamHotelsRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getSiwaHotels() async {
    var value = await _siwaHotelsRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getLuxorHotels() async {
    var value = await _luxorHotelsRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getAswanHotels() async {
    var value = await _aswanHotelsRef.get();
    return value.docs;
  }




}