
import 'package:demo_zmap/bus/dahab_bus_details.dart';
import 'package:demo_zmap/core_view_model/view_model/bus_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

class AswanBusExList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BusesViewModel>(
      builder: (controller) =>
          Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.grey,
              title: Text("All Aswan Buses"),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                primary: false,
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.aswanbusModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: GestureDetector(
                      onTap: (){
                        // Get.to(DahabBusDetails(
                        //   model: controller.aswanbusModel[index],

                      },
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
                                        '${controller.aswanbusModel[index]
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
                                                .aswanbusModel[index]
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
                                        '${controller.aswanbusModel[index]}',
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