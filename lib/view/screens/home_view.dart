import 'package:demo_zmap/core_view_model/view_model/home_view_model.dart';
import 'package:demo_zmap/model/blogs_model_and_exlist/blogs_ex_list.dart';
import 'package:demo_zmap/model/places_models_and_details/places_details.dart';
import 'package:demo_zmap/model/places_models_and_details/places_ex_list.dart';
import 'package:demo_zmap/model/trips_model_and_ex_details/trips_ex_list.dart';
import 'package:demo_zmap/view/widgets/custom_text.dart';
import 'package:demo_zmap/view/widgets/list_custom_text.dart';
import 'package:demo_zmap/view/widgets/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/blogs_model_and_exlist/blog_details.dart';
import '../../model/trips_model_and_ex_details/trips_details.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.put(HomeViewModel()),
      builder: (controller) =>
      controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Where are you \ngoing?",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            //*FIRST LIST**
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ('Search'),
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    Get.to(SearchView(value));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Places",
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
                  Get.to(PlacesExList());
                },
              ),
              ],
              ),
            ),
            // **PLACES LIST !
            _buildHorizontalList(context),
//2D LIST
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Trips ",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                  ),
                  TextButton(
                    child:
                    Text(
                      "See all ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFd99058),

                      ),
                    ),
                    onPressed: () {
                      Get.to(TripsExList());
                    },
                  ),
                ],
              ),
            ),
//*VERTICAL TRIPS LIST
            _buildVerticalList(),

            //PLOGS LIST **
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Your daily read",
                    fontSize: 18,
                    fomtweight: FontWeight.bold,
                    alignment: Alignment.topLeft,
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
                      Get.to(BlogsExList());
                    },
                  ),
                ],
              ),
            ),
            //**BLOG WIDGET
            _buildBlogsList(),
            SizedBox(
              width: 30.0,
            )
          ],
        ),
      ),
    );
  }

}

//**HORIZONTAL PLACES WIDGET
Widget _buildHorizontalList(context) {
  return GetBuilder<HomeViewModel>(
    builder: (controller) =>
        Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: controller.placesModel.length,
            itemBuilder: (context, index) {
              return GestureDetector(
            onTap: () {
              Get.to(PlacesDetails(
                model: controller.placesModel[index],
              ));
            },
            child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    child: Container(
                      height: 250.0,
                      width: 140.0,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                '${controller.placesModel[index].image}',
                                // controller.placesModel[index].image,
                                height: 178.0,
                                width: 140.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 7.0
                            ),
                            ListCustomText(
                              text: '${controller.placesModel[index].name}',
                            ),
                            SizedBox(height: 3.0
                            ),
                            ListCustomText(
                              text: '${controller.placesModel[index].location}',
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            )
                          ],
                        ),
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

//*VERTICAL TRIPS LIST WIDGET
Widget _buildVerticalList() {
  return GetBuilder<HomeViewModel>(
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView.builder(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.tripsModel.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: InkWell(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(TripsDetails(
                        model: controller.tripsModel[index],
                      ));
                    },
                    child: Container(
                      height: 70.0,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              '${controller.tripsModel[index].image}',
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
                                    '${controller.tripsModel[index].name}',
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
                                        '${controller.tripsModel[index]
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
                                    '${controller.tripsModel[index].price}',
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

//*bBLOGS LIST WIDGET
Widget _buildBlogsList() {
  return GetBuilder<HomeViewModel>(
    builder: (controller) => Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: controller.blogsModel.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Get.to(BlogDetails(
                model: controller.blogsModel[index],
              ));
            },
            child: InkWell(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 75,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          '${controller.blogsModel[index].image}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${controller.blogsModel[index].title}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${controller.blogsModel[index].date}',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    ),
  );
}

