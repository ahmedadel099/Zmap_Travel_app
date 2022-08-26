import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/core_view_model/view_model/home_view_model.dart';
import 'package:demo_zmap/model/activities/aswan_activities_details.dart';
import 'package:demo_zmap/model/activities/aswan_activities_exlist.dart';
import 'package:demo_zmap/model/activities/dahab_activities_details.dart';
import 'package:demo_zmap/model/activities/dahb_activities_exlist.dart';
import 'package:demo_zmap/model/activities/hurghada_activities_details.dart';
import 'package:demo_zmap/model/activities/hurghada_activities_exlist.dart';
import 'package:demo_zmap/model/activities/luxor_activities_details.dart';
import 'package:demo_zmap/model/activities/luxor_activities_exlist.dart';
import 'package:demo_zmap/model/activities/marsaalam_activities_details.dart';
import 'package:demo_zmap/model/activities/marsaalam_exlist.dart';
import 'package:demo_zmap/model/activities/sharm_activities_details.dart';
import 'package:demo_zmap/model/activities/sharm_exlist.dart';
import 'package:demo_zmap/model/activities/siwa_activities_details.dart';
import 'package:demo_zmap/model/activities/siwa_exlist.dart';
import 'package:demo_zmap/model/all_hotels/aswan_hotels/aswan_hotels_details.dart';
import 'package:demo_zmap/profile/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/route_manager.dart';



class ActivitiesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.find(),
      builder: (controller) =>
      controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: primaryColor,
          elevation: 2.0,
          title: Text('Chose Your Activities'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.all(20.0),
            //   child: Text(
            //     "Chose Your Activities",
            //     style: TextStyle(
            //       fontSize: 30.0,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            //*FIRST LIST**

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Dahab Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(DahabActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            //**************
            _dahabActivitiesList(context),


            SizedBox(height: 10.0,),
            //  ***hurghada
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Hurghada Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(HurghadaActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            _hurghadaActivitiesList(context),
            //  ...Marsa Alam
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Sharm El-Sheikh Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(SharmActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            _sharmActivitiesList(context),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Marsa Alam Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(MarsaAlamActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            _marsaAlamActivitiesList(context),
            //  ***Siwa
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Siwa Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(SiwaActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            _siwaActivitiesList(context),
            //  **Luxor
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Luxor Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(LuxorActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            _luxorActivitiesList(context),
            //  **Aswan
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Aswan Activities",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Get.to(AswanActivitiesExlist());
                    },
                  ),
                ],
              ),
            ),
            _aswanActivitiesList(context),
          ],
        ),
      ),
    );
  }
}

_dahabActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.dahabActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(DahabActivitiesDetails(
                      model: controller.dahabActivModel[index],
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
                              '${controller.dahabActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.dahabActivModel[index].name}',
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
                              '${controller.dahabActivModel[index].location}',
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


_hurghadaActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.hurghadaActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(HurghadaActivitiesDetails(
                      model: controller.hurghadaActivModel[index],
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
                              '${controller.hurghadaActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.hurghadaActivModel[index].name}',
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
                              '${controller.hurghadaActivModel[index].location}',
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

_sharmActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.sharmActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(SharmActivitiesDetails(
                      model: controller.sharmActivModel[index],
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
                              '${controller.sharmActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.sharmActivModel[index].name}',
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
                              '${controller.sharmActivModel[index].location}',
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

_marsaAlamActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.marsaAlamActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(MarsaAlamActivitiesDetails(
                      model: controller.marsaAlamActivModel[index],
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
                              '${controller.marsaAlamActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.marsaAlamActivModel[index].name}',
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
                              '${controller.marsaAlamActivModel[index].location}',
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

_siwaActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.siwaActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(SiwaActivitiesDetails(
                      model: controller.siwaActivModel[index],
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
                              '${controller.siwaActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.siwaActivModel[index].name}',
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
                              '${controller.siwaActivModel[index].location}',
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

_luxorActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.luxoorActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(LuxorActivitiesDetails(
                      model: controller.luxoorActivModel[index],
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
                              '${controller.luxoorActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.luxoorActivModel[index].name}',
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
                              '${controller.luxoorActivModel[index].location}',
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

_aswanActivitiesList(BuildContext context) {
  return GetBuilder<HomeViewModel>(
    builder:(controller)=>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.aswanActivModel.length,
            itemBuilder: ( context,  index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(AswanActivitiesDetails(
                      model: controller.aswanActivModel[index],
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
                              '${controller.aswanActivModel[index].image}',
                              height: 178.0,
                              width: 140.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 7.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${controller.aswanActivModel[index].name}',
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
                              '${controller.aswanActivModel[index].location}',
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






