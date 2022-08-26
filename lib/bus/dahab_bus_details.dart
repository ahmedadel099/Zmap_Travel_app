import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/core_view_model/view_model/bus_view_model.dart';
import 'package:demo_zmap/model/buses_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DahabBusDetails extends StatelessWidget {
  BusesModel model ;
  DahabBusDetails({this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${model.name}'),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 2.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
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
              Row(
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
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "From",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.blueGrey,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${model.from}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "To",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.blueGrey,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${model.to}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.alarm,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Time",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.blueGrey,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${model.time}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.blueGrey,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 5),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${model.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "BusDetails",
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
              SizedBox(height: 20),

              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                      '${model.coimage}',
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('${model.coname}'),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Company Details",
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
                  "${model.codetails}",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20.0),
              // SizedBox(height: 10.0),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "Date",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16,
              //     ),
              //     maxLines: 1,
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "${model.date}",
              //     style: TextStyle(
              //       fontWeight: FontWeight.normal,
              //       fontSize: 15.0,
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "Time",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16,
              //     ),
              //     maxLines: 1,
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "${model.time}",
              //     style: TextStyle(
              //       fontWeight: FontWeight.normal,
              //       fontSize: 15.0,
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),

            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(
          Icons.call,

        ),
        onPressed: () async {
          String url = 'tel: ${model.phoneNumber}';
          if(await canLaunch(url)) {
            await launch(url);
          }else{
            throw 'could not launch $url';
          }
        },

      ),
    );
  }





  buildSlider() {
    return GetBuilder<BusesViewModel>(
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
