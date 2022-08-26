import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_zmap/core_view_model/view_model/favorite_view_model.dart';
import 'package:demo_zmap/model/trips_model_and_ex_details/trips_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Your Favourites",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        // *****
          _buildVerticalList(),
        ],
      ),
    );
  }
}



Widget _buildVerticalList() {
  return GetBuilder<FavoriteViewModel>(
    init: FavoriteViewModel(),
    builder: (controller) =>
        Padding(
          padding: EdgeInsets.all(20.0),
          child: StreamBuilder(stream: FirebaseFirestore.instance.collection('Users').doc(FirebaseAuth.instance.currentUser.uid).collection('favorites').snapshots(),
            builder:(context,AsyncSnapshot<QuerySnapshot> snapshot) {
              if(snapshot != null && snapshot.data != null){
              return ListView.builder(
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (BuildContext context, int index) {
                return FutureBuilder ( future:
                FirebaseFirestore.instance.collection('TRIPS').doc(snapshot.data.docs[index]['id']).get(),
                  builder:(context,AsyncSnapshot<DocumentSnapshot> snapshot) {
                if(snapshot != null && snapshot.data != null){
                  TripsModel tripsModel = TripsModel.fromJson( snapshot.data.data());

                return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: InkWell(
                      child: GestureDetector(
                        child: Container(
                          height: 70.0,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  '${tripsModel.image}',
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
                                        '${tripsModel.name}',
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
                                            '${tripsModel.location}',
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
                                        '${tripsModel.price}',
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
                }
                else{
                return Container();
                }
                  },
                );
  },
            );}
              else{
                return Container();
              }
            },
          ),
        ),
  );


}
