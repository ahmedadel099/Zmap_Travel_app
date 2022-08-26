import 'package:demo_zmap/core_view_model/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/route_manager.dart';

import 'blog_details.dart';


class BlogsExList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) =>
          Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.grey,
              title: Text("All Places"),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(20.0),
              child:ListView.separated(
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
          ),
    );
  }
}