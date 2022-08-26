import 'package:demo_zmap/view/control_view.dart';
import 'package:demo_zmap/view/screens/profile_view.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fluttericon/elusive_icons.dart';

import 'custom_text.dart';


class AboutUsView extends StatefulWidget {

  // const HelpAndSupport({Key key}) : super(key: key);

  @override
  _AboutUsViewState createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ControlView()));},
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.black,
        ),
        title: Text(
          'About Us',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 60, bottom: 25,end: 25,start: 25),
           child: Column(
             children: [
               Container(
                 child: Center(
                   child:
                   Image.asset('assets/images/image8.png')  ),
               ),
               SizedBox(height: 10,),
               Container(
                 child: Center(
                     child: Text('This Application Was Developed By (CS-08 team) Obor Institutes Students for Graduation Project To ZMAP tourism Company'
                        , style: TextStyle(fontSize:15,
                             fontWeight: FontWeight.bold
                         )
                 )),

               ),

             ],
           ),
        )
      ),
    );
  }
}
