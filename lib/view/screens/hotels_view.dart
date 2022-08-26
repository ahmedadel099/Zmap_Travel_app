import 'package:demo_zmap/core_view_model/view_model/hotels_view_model.dart';
import 'package:demo_zmap/model/all_hotels/aswan_hotels/aswan_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/aswan_hotels/aswan_hotels_exlist.dart';
import 'package:demo_zmap/model/all_hotels/dahab_hotels_models/dahab_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/dahab_hotels_models/dahab_hotels_ex_list.dart';
import 'package:demo_zmap/model/all_hotels/hurghada_hotels/hurghada_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/hurghada_hotels/hurghada_hotels_exlist.dart';
import 'package:demo_zmap/model/all_hotels/luxor_hotels/luxor_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/luxor_hotels/luxor_hotels_exlist.dart';
import 'package:demo_zmap/model/all_hotels/marsa_alam_hotels/marsa_alam_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/marsa_alam_hotels/marsa_alam_hotels_exlist.dart';
import 'package:demo_zmap/model/all_hotels/sharm_hotels/sharm_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/sharm_hotels/sharm_hotels_exlist.dart';
import 'package:demo_zmap/model/all_hotels/siwa_hotels/siwa_hotels_details.dart';
import 'package:demo_zmap/model/all_hotels/siwa_hotels/siwa_hotels_exlist.dart';
import 'package:demo_zmap/profile/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelsView extends StatelessWidget {
  // const HotelsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelsViewModel>(
        init: Get.find(),
        builder:(controller)=>
        controller.loading.value
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Chose Your Hotel",
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
                    text: "Dahab Hotels",
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
                      Get.to(DahabHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _dahabHotelsList(context),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Sharm El-Sheikh Hotels",
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
                      Get.to(SharmHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            _sharmHotelsList(context),
            // SizedBox(height: 10.0,),
          //  ***hurghada
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Hurghada Hotels",
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
                      Get.to(HurghadaHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            _hurghadaHotelsList(context),

          //  ...Marsa Alam
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Marsa Alam Hotels",
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
                      Get.to(MarsaAlamHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            _marsaAlamHotelsList(context),

          //  ***Siwa
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Siwa Hotels",
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
                      Get.to(SiwaHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            _siwaHotelsList(context),

          //  **Luxor
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Luxor Hotels",
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
                      Get.to(LuxorHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            _luxorHotelsList(context),
          //  **Aswan
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Aswan Hotels",
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
                      Get.to(AswanHotelsExList());
                    },
                  ),
                ],
              ),
            ),
            _aswanHotelsList(context),
          ],
        ),
      ),
    );
  }
}


//**DAHAB HOTELS WIDGET
_dahabHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.dahabHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(DahabHotelsDetails(
                      model: controller.dahabHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.dahabHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.dahabHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                            Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.dahabHotelsModel[index].price}',
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
                      ),
                    ),
                  ),
                );
            },
          ),
        ),
  );
}

//..sharm hotels widget
_sharmHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.sharmHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(SharmHotelsDetails(
                      model: controller.sharmHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.sharmHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.sharmHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.sharmHotelsModel[index].price}',
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
  );
}

//Hurghada hotels widget
_hurghadaHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.hurghadaHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(HurghadaHotelsDetails(
                      model: controller.hurghadaHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.hurghadaHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.hurghadaHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.hurghadaHotelsModel[index].price}',
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
  );
}

//MarsaAlam hotels widget
_marsaAlamHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.marsaAlamHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(MarsaAlamHotelsDetails(
                      model: controller.marsaAlamHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.marsaAlamHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.marsaAlamHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.marsaAlamHotelsModel[index].price}',
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
  );
}

//Siwa hotels widget
_siwaHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.siwaHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(SiwaHotelsDetails(
                      model: controller.siwaHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.siwaHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.siwaHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.siwaHotelsModel[index].price}',
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
  );
}

//luxor hotels widget
_luxorHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.siwaHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(LuxorHotelsDetails(
                      model: controller.luxorHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.luxorHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.luxorHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.luxorHotelsModel[index].price}',
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
  );
}

//Aswan hotels widget
_aswanHotelsList(BuildContext context) {
  return GetBuilder<HotelsViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.aswanHotelsModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(AswanHotelsDetails(
                      model: controller.aswanHotelsModel[index],
                    ));
                  },
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              '${controller.aswanHotelsModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.aswanHotelsModel[index].name}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.aswanHotelsModel[index].price}',
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
                    ),
                  ),
                ),
              );
            },
          ),
        ),
  );
}


