import 'package:demo_zmap/core_view_model/view_model/home_view_model.dart';
import 'package:demo_zmap/model/trips_model_and_ex_details/trips_details.dart';
import 'package:demo_zmap/model/trips_model_and_ex_details/trips_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class SearchView extends StatefulWidget {
  final String searchValue;

  SearchView(this.searchValue);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String _searchValue;

  @override
  void initState() {
    _searchValue = widget.searchValue.toLowerCase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<TripsModel> _searchTrips = _searchValue == ''
        ? []
        : Get.find<HomeViewModel>()
            .tripsModel
            .where((trips) => trips.name.toLowerCase().contains(_searchValue))
            .toList();

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            child: Padding(
              padding: EdgeInsets.only(bottom: 24, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  CustomText(
                    text: 'Search',
                    fontSize: 20,
                    alignment: Alignment.bottomCenter,
                  ),
                  Container(
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 49,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(45),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                initialValue: _searchValue,
                onFieldSubmitted: (value) {
                  setState(() {
                    _searchValue = value.toLowerCase();
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: GetBuilder<HomeViewModel>(
              builder: (controller) => Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView.builder(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _searchTrips.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: InkWell(
                        child: GestureDetector(
                          onTap: () {
                            Get.to(TripsDetails(
                              model: _searchTrips[index],
                            ));
                          },
                          child: Container(
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    '${_searchTrips[index].image}',
                                    height: 70.0,
                                    width: 70.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 15.0),
                                Container(
                                  height: 80.0,
                                  width:
                                      MediaQuery.of(context).size.width - 130.0,
                                  child: ListView(
                                    primary: false,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '${_searchTrips[index].name}',
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
                                              '${_searchTrips[index].location}',
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
                                          '${_searchTrips[index].price}',
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
            // child:
            //         Padding(
            //           padding: EdgeInsets.only(right: 16, left: 16, bottom: 24),
            //           child: GetBuilder<HomeViewModel>(
            //             init: Get.find<HomeViewModel>(),
            //             builder: (controller) => GridView.builder(
            //               padding: const EdgeInsets.all(0),
            //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //                 crossAxisCount: 2,
            //                 mainAxisSpacing: 16,
            //                 crossAxisSpacing: 15,
            //                 mainAxisExtent: 320,
            //               ),
            //               itemCount: _searchProducts.length,
            //               itemBuilder: (context, index) {
            //                 return GestureDetector(
            //                   onTap: () {
            //                     Get.to(
            //                       TripsDetails(),
            // // TripsDetails(_searchProducts[index]),
            //
            // );
            //                   },
            //                   child: Container(
            //                     width: 164.w,
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Container(
            //                           decoration: BoxDecoration(
            //                             borderRadius: BorderRadius.circular(4.r),
            //                             color: Colors.white,
            //                           ),
            //                           height: 240.h,
            //                           width: 164.w,
            //                           child: Image.network(
            //                             _searchProducts[index].image,
            //                             fit: BoxFit.cover,
            //                           ),
            //                         ),
            //                         CustomText(
            //                           text: _searchProducts[index].name,
            //                           fontSize: 16,
            //                         ),
            //                         CustomText(
            //                           text: _searchProducts[index].description,
            //                           fontSize: 12,
            //                           color: Colors.grey,
            //                           maxLines: 1,
            //                         ),
            //                         CustomText(
            //                           text: '\$${_searchProducts[index].price}',
            //                           fontSize: 16,
            //                           color: primaryColor,
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 );
            //               },
            //             ),
            //           ),
            //         ),
          ),
        ],
      ),
    );
  }
}
