import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextButton() =>  Container(
  color: Colors.yellow,
  child: TextButton(

    onPressed: () {},
    child: Expanded(
      child: Row(
        children: [
          Icon(Icons.dark_mode_rounded),
          SizedBox(width: 5,),
          Text(
            '',
          ),
          Spacer(),
          IconButton(onPressed: (){},icon:Icon(Icons.arrow_forward_ios_outlined)),
        ],
      ),

    ),


  ),
);