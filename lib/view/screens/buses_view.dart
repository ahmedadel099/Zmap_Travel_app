import 'package:demo_zmap/bus/aswan_bus_exlist.dart';
import 'package:demo_zmap/bus/dahab_bus_details.dart';
import 'package:demo_zmap/bus/dahab_buses_exlist.dart';
import 'package:demo_zmap/bus/hurghada_bus_details.dart';
import 'package:demo_zmap/bus/hurghada_bus_exlist.dart';
import 'package:demo_zmap/bus/luxor_bus_details.dart';
import 'package:demo_zmap/bus/luxor_bus_exlist.dart';
import 'package:demo_zmap/bus/marsaalam_bus_details.dart';
import 'package:demo_zmap/bus/marsaalam_bus_exlist.dart';
import 'package:demo_zmap/bus/aswan_bus_details.dart';
import 'package:demo_zmap/bus/sharm_bus_details.dart';
import 'package:demo_zmap/bus/sharm_bus_exlist.dart';
import 'package:demo_zmap/bus/siwa_bus_details.dart';
import 'package:demo_zmap/bus/siwa_bus_exlist.dart';
import 'package:demo_zmap/core_view_model/view_model/bus_view_model.dart';
import 'package:demo_zmap/model/all_hotels/luxor_hotels/luxor_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/siwa_hotels/siwa_hotels_details.dart';
import 'package:demo_zmap/profile/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class BusesView extends StatelessWidget {
  // const BusesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BusesViewModel>(
      init: Get.find(),
      builder: (controller) =>
      controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Chose Your Bus",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Dahab Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(DahabBusExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _dahabBusesList(),
            SizedBox(height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Sharm El-Shikh Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(SharmBusExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _sharmBusesList(),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Hurghada Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(HurghadaBusExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _hurghadaBusesList(),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Marsa Alam Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(MarsaalamBusExList());
                    },
                  ),
                ],
              ),
            ),

            _marsaalamBusesList(),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Siwa Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(SiwaBusExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _siwaBusesList(),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Luxor Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(LuxorBusExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _luxorBusesList(),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Aswan Buses",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: Color(0xFFd99058),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(AswanBusExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _aswanBusesList(),

          ],
        ),
      ),
    );
  }

}

Widget _dahabBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.dahabbusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(DahabBusDetails(
                    model: controller.dahabbusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.dahabbusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.dahabbusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Destination ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.dahabbusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.dahabbusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}

//sharm bus list
Widget _sharmBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.sharmbusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(SharmBusDetails(
                    model: controller.sharmbusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.sharmbusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.sharmbusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.sharmbusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.sharmbusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}

//hurghada bus list
Widget _hurghadaBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.hurghadabusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(HurghadaBusDetails(
                    model: controller.hurghadabusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.hurghadabusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.hurghadabusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.hurghadabusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.hurghadabusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}

//marsa alam bus list
Widget _marsaalamBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.marsaalambusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(MarsaLamBusDetails(
                    model: controller.marsaalambusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.marsaalambusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.marsaalambusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.marsaalambusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.marsaalambusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}

//siwa
Widget _siwaBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.siwabusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(SiwaBusDetails(
                    model: controller.siwabusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.siwabusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.siwabusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.siwabusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.siwabusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}

//luxor
Widget _luxorBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.luxorbusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(LuxorBusDetails(
                    model: controller.luxorbusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.luxorbusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.luxorbusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.luxorbusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.luxorbusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}


//aswan
Widget _aswanBusesList() {
  return GetBuilder<BusesViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.aswanbusModel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.to(AswanBusDetails(
                    model: controller.aswanbusModel[index],
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.aswanbusModel[index].image}',
                              height: 70.0,
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 80.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
                            child: ListView(
                              primary: false,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.aswanbusModel[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 13.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${controller.aswanbusModel[index]
                                            .location}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.blueGrey[300],
                                        ),
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${controller.aswanbusModel[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              );
            },
          ),
        ),
  );
}



