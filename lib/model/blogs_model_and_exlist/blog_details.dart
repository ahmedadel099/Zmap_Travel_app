import 'package:demo_zmap/constance.dart';
import 'package:demo_zmap/model/blogs_model_and_exlist/blogs_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogDetails extends StatelessWidget {
  BlogsModel model ;
  BlogDetails({this.model});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('${model.title}'),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 2.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(8),
        //       child: Container(
        //         color: Colors.grey[200],
        //         child: IconButton(
        //           icon: Icon(
        //             Icons.bookmark_outline,
        //             size: 20,
        //           ),
        //           color: Colors.grey,
        //           //شغلك اهو يا شرقاوي ********
        //           onPressed: () {},
        //         ),
        //       ),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(8),
        //       child: Container(
        //         color: Colors.grey[200],
        //         child: IconButton(
        //           icon: CircleAvatar(
        //             radius: 15.0,
        //             child: Icon(
        //               Icons.favorite_border,
        //               size: 20,
        //             ),
        //           ),
        //           color: Colors.grey,
        //           //++شغلك اهو يا شرقاوى **
        //           onPressed: () {},
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: ListView(
            children: [
              Text(
                '${model.title}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                // alignment: WrapAlignment.start,
                // crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                      '${model.authorimage}',
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('${model.author}'),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${model.date}',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    '${model.image}',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                        '${model.firstLitter}',
                        style: GoogleFonts.notoSerif(
                            color: Colors.black, fontSize: 32)
                    ),
                    TextSpan(
                      text:
                      '${model.article}',
                      style:
                       GoogleFonts.notoSerif
                        (
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.7,
                        // wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );

  }
  }