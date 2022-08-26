import 'package:demo_zmap/core_view_model/view_model/hotels_view_model.dart';
import 'package:demo_zmap/model/all_hotels/sharm_hotels/sharm_hotels_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/route_manager.dart';

class HurghadaHotelsExList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelsViewModel>(
      builder: (controller) =>
          Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.grey,
              title: Text("Hurghada Hotels"),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                primary: false,
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.hurghadaHotelsModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: (){
                        Get.to(SharmHotelsDetails(
                          model: controller.hurghadaHotelsModel[index],
                        ));
                      },
                      child: InkWell(
                        child: Container(
                          height: 70.0,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  '${controller.hurghadaHotelsModel[index].image}',
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
                                        '${controller.hurghadaHotelsModel[index]
                                            .name}',
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
                                            '${controller
                                                .hurghadaHotelsModel[index]
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
                                        '${controller.hurghadaHotelsModel[index].price}',
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
          ),
    );
  }
}