import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {

  final CollectionReference _placesRef =
  FirebaseFirestore.instance.collection("PLACES");

  final CollectionReference _tripsRef =
  FirebaseFirestore.instance.collection("TRIPS");

  final CollectionReference _blogsRef =
  FirebaseFirestore.instance.collection("BLOGS");


  final CollectionReference _dahabAcRef =
  FirebaseFirestore.instance.collection("Dahab Activities");

  final CollectionReference _sharmAcRef =
  FirebaseFirestore.instance.collection('Sharm Activities');

  final CollectionReference _hurghadaAcRef =
  FirebaseFirestore.instance.collection('Hurghada Activities');

  final CollectionReference _marsaAlamAcRef =
  FirebaseFirestore.instance.collection('Marsa Alam Activities');

  final CollectionReference _siwaAcRef =
  FirebaseFirestore.instance.collection("Siwa Activities");

  final CollectionReference _luxorAcRef =
  FirebaseFirestore.instance.collection("Luxor Activities");

  final CollectionReference _aswanAcRef =
  FirebaseFirestore.instance.collection("Aswan Activities");



    Future<List<QueryDocumentSnapshot>> getPlaces() async {
      var value = await _placesRef.get();

      return value.docs;
    }

  Future<List<QueryDocumentSnapshot>> geTrips() async {
    var value = await _tripsRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getBlogs() async {
    var value = await _blogsRef.get();

    return value.docs;
  }


  Future<List<QueryDocumentSnapshot>> getDahabAc() async {
    var value = await _dahabAcRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getSharmAc() async {
    var value = await _sharmAcRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getHurghadaAc() async {
    var value = await _hurghadaAcRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getMarsaAlamAc() async {
    var value = await _marsaAlamAcRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getSiwaAc() async {
    var value = await _siwaAcRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getLuxorAc() async {
    var value = await _luxorAcRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getAswanrAc() async {
    var value = await _aswanAcRef.get();

    return value.docs;
  }


}