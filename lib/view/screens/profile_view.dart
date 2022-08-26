import 'package:demo_zmap/profile/about_us.dart';
import 'package:demo_zmap/profile/custom_text.dart';
import 'package:demo_zmap/profile/edit_profile.dart';
import 'package:demo_zmap/profile/help_support.dart';
import 'package:demo_zmap/profile/profile_logout.dart';
import 'package:demo_zmap/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileView extends StatefulWidget {
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isOn = false;
  IconData darkMode =(Icons.toggle_off_rounded) ;
  // ThemeManger _themeManger = ThemeManger();

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<LogOut>(
      init: LogOut(),
      builder:(controller) => controller.loading.value ? Center(child: CircularProgressIndicator()) : Scaffold(

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 60, bottom: 25,end: 25,start: 25),

            child: Column(
              children: [
                SizedBox(
                  height: 115,
                  width: 115,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)
                          ),
                          image: DecorationImage(
                            image: controller.userModel == null
                                ? NetworkImage(
                              'https://i.pinimg.com/236x/65/25/a0/6525a08f1df98a2e3a545fe2ace4be47.jpg',
                            )
                                : NetworkImage(
                              controller.userModel.pic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  text:controller.userModel ==null ? 'Zmap user':  controller.userModel.name,
                  alignment:Alignment.center,
                ),
                SizedBox(
                  height: 6.0,
                ),
                CustomText(
                  text: controller.userModel==null ? 'ُEmail' :controller.userModel.email,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()));
                    },
                    color: Color(0xFFd99058),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.edit,
                          color: Colors.white,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Color(0xFFd99058),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.dark_mode_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Dark Mode',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed:(){
                            if(isOn){
                              isOn = false;
                              setState(() {
                                darkMode = (Icons.toggle_off_rounded);
                              });
                            }else{
                              isOn = true;
                              setState(() {
                                darkMode = (Icons.toggle_on_rounded);
                              });
                            }
                          } ,icon:Icon(darkMode,size: 30,
                            color: Colors.white,
                          )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 60,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(
                //       20,
                //     ),
                //   ),
                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                //   child: Container(
                //     color: Color(0xFFd99058),
                //     child: Switch(value: _themeManger.themeMode == ThemeMode.dark,
                //         onChanged: (newValue){
                //       _themeManger.toggleTheme(newValue);
                //
                //     }
                //
                //       // child: Row(
                //       //   children: [
                //       //     Icon(Icons.dark_mode_rounded,
                //       //       color: Colors.white,
                //       //     ),
                //       //     SizedBox(
                //       //       width: 10,
                //       //     ),
                //       //     Text(
                //       //       'Dark Mode',
                //       //       style: TextStyle(
                //       //         color: Colors.white,
                //       //       ),
                //       //     ),
                //       //     Spacer(),
                //       //     IconButton(onPressed:(){
                //       //       if(isOn){
                //       //         isOn = false;
                //       //         setState(() {
                //       //           darkMode = (Icons.toggle_off_rounded);
                //       //         }
                //       //         );
                //       //       }else{
                //       //         isOn = true;
                //       //         setState(() {
                //       //           darkMode = (Icons.toggle_on_rounded);
                //       //         });
                //       //       }
                //       //     } ,icon:Icon(darkMode,size: 30,
                //       //       color: Colors.white,
                //       //     )
                //       //     ),
                //       //   ],
                //       // ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Color(0xFFd99058),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.language,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Change Language',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Color(0xFFd99058),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HelpAndSupport()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.contact_support_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Help & Support',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Color(0xFFd99058),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutUsView()));},
                      child: Row(
                        children: [
                          Icon(Icons.family_restroom,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'About US ?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Color(0xFFd99058),
                    child: TextButton(
                      onPressed: () {
                        controller.signOut();
                        Get.offAll(() => LoginView());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.account_circle_rounded,
                          color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Log Out',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ],
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
