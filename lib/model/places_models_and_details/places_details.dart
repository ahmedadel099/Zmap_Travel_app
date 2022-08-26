import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/core_view_model/view_model/home_view_model.dart';
import 'package:demo_zmap/model/activities/activitesView.dart';
import 'package:demo_zmap/model/places_models_and_details/places_model.dart';
import 'package:demo_zmap/profile/custom_text.dart';
import 'package:demo_zmap/view/screens/buses_view.dart';
import 'package:demo_zmap/view/screens/hotels_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlacesDetails extends StatelessWidget {
  PlacesModel model ;
  PlacesDetails({this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text('${model.name}'),
        centerTitle: true,
        backgroundColor: primaryColor,
        // backgroundColor: Color(0xffe4b088),
        elevation: 2.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: <Widget>[
          buildSlider(),
          SizedBox(height: 20),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${model.name}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: IconButton(
                        onPressed: () {
                        },
                        icon: CircleAvatar(
                          radius: 50.0,
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.favorite_border,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Flexible(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${model.location}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.blueGrey[300],
                        ),
                        // maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${model.details}",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Activities ",
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
                        Get.to(ActivitiesView());
                      },
                    ),
                  ],
                ),
              ),
              //appbar
              BottomAppBar(
                elevation: 0,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.directions_car_rounded,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Get.to(BusesView());
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.hotel,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Get.to(HotelsView());
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.directions_bike,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            Get.to(ActivitiesView());
                          }),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
  buildSlider() {
    return GetBuilder<HomeViewModel>(
      builder:(controller)=> Container(
        height: 300.0,
        child: SizedBox(
            child: Carousel(
              boxFit: BoxFit.cover,
              dotSize: 5.0,

              images: [
                NetworkImage('${model.image1}'),
                NetworkImage('${model.image2}'),
                NetworkImage('${model.image3}'),
                NetworkImage('${model.image4}'),
                NetworkImage('${model.image5}'),
              ],
            )
        ),
      ),
    );
  }
}

// Widget _buildVerticalList() {
//   return GetBuilder<HomeViewModel>(
//     builder: (controller) =>
//         Padding(
//           padding: EdgeInsets.all(20.0),
//           child: ListView.builder(
//             primary: false,
//             physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: controller.dahabActivModel.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 15.0),
//                 child: InkWell(
//                   child: GestureDetector(
//                     onTap: () {},
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Container(
//                         height: 70.0,
//                         child: Row(
//                           children: <Widget>[
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(5),
//                               child: Image.network(
//                                 '${controller.dahabActivModel[index].image}',
//                                 height: 70.0,
//                                 width: 70.0,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             SizedBox(width: 15.0),
//                             Container(
//                               height: 80.0,
//                               width: MediaQuery
//                                   .of(context)
//                                   .size
//                                   .width - 130.0,
//                               child: ListView(
//
//                                 primary: false,
//                                 physics: NeverScrollableScrollPhysics(),
//                                 shrinkWrap: true,
//                                 children: <Widget>[
//                                   Container(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       '${controller.dahabActivModel[index].name}',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 14.0,
//                                       ),
//                                       maxLines: 2,
//                                       textAlign: TextAlign.left,
//                                     ),
//                                   ),
//                                   SizedBox(height: 3.0),
//                                   Row(
//                                     children: <Widget>[
//                                       Icon(
//                                         Icons.location_on,
//                                         size: 13.0,
//                                         color: Colors.blueGrey[300],
//                                       ),
//                                       SizedBox(width: 3.0),
//                                       Container(
//                                         alignment: Alignment.centerLeft,
//                                         child: Text(
//                                           '${controller.dahabActivModel[index]
//                                               .location}',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 13.0,
//                                             color: Colors.blueGrey[300],
//                                           ),
//                                           maxLines: 1,
//                                           textAlign: TextAlign.left,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(height: 10.0),
//                                   Container(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       '${controller.dahabActivModel[index].price}',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16.0,
//                                       ),
//                                       maxLines: 1,
//                                       textAlign: TextAlign.left,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//   );
//
//
// }

