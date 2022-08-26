import 'package:demo_zmap/view/control_view.dart';
import 'package:demo_zmap/view/screens/profile_view.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fluttericon/elusive_icons.dart';


class HelpAndSupport extends StatefulWidget {

  // const HelpAndSupport({Key key}) : super(key: key);

  @override
  _HelpAndSupportState createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
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
          'Help & Support',
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
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us Through',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    SignInButton(
                      Buttons.Twitter,
                      mini: true,
                      onPressed: () {},
                    ),

                    SignInButton(
                      Buttons.Email,
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  child: ListTile(
                    leading: Icon(
                      Elusive.phone_circled,
                      size: 22,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      '01102600266',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child: ListTile(
                    leading: Icon(
                      Elusive.mail_circled,
                      size: 22,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      'support@zmap.com',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Or Send To Us :-',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (title){
                      if(title ==null || title.isEmpty)
                        return 'Please Enter The Title';
                      else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: ' Explain your problem',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (name){
                      if(name ==null || name.isEmpty)
                        return 'Please Enter The Name';
                      else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: ' Enter your Name',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    validator: (email)=>
                    email != null && !EmailValidator.validate(email)
                        ? 'Enter a valid email'
                        : null,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: ' Enter Email',
                      labelStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (message){
                    if(message ==null || message.isEmpty)
                      return 'Please Enter Your Message';

                    else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: ' Your Message',
                    labelStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 60.0, horizontal: 60.0),
                  ),
                  maxLines: null,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      final form = formKey.currentState;
                      if(form.validate()){
                        print('Form valid');
                      }
                    },
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.deepOrange,
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
