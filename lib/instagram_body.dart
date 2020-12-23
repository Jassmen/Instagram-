import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram/model/color.dart';

import 'body.dart';
import 'model/navbar/build_icon.dart';
import 'model/navbar/buttom_navigator.dart';

class instgramBody extends StatefulWidget {
  @override
  _instgramBodyState createState() => _instgramBodyState();
}



class _instgramBodyState extends State<instgramBody> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: bgColor,
      body:Stack(
        children: <Widget>[
          Body(),
          Align(alignment:  Alignment.bottomCenter,
            child: Buttom_Navigator(),
          )
        ],
      )

    );
  }
}











