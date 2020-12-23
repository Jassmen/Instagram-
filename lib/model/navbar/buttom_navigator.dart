import 'package:flutter/material.dart';

import '../color.dart';

import 'build_icon.dart';


class NavigatorIcon {
  String icon;
  bool isSelected;

  NavigatorIcon({this.icon, this.isSelected});
}

  int currentPageIndex=0;
  final  List<NavigatorIcon> myNav = [
    NavigatorIcon(icon: 'assets/home.png', isSelected: true),
    NavigatorIcon(icon: 'assets/search.png', isSelected: false),
    NavigatorIcon(icon: 'assets/tab3.png', isSelected: false),
    NavigatorIcon(icon: 'assets/avatar.png', isSelected: false),
  ];

class Buttom_Navigator extends StatefulWidget {
  @override
  _Buttom_NavigatorState createState() => _Buttom_NavigatorState();
}

class _Buttom_NavigatorState extends State<Buttom_Navigator> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 100,
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    width: (MediaQuery
                        .of(context)
                        .size
                        .width / 2) - 30.5,
                    height: 70,
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        InkWell(
                            onTap: (){
                              setState(() {
                                currentPageIndex=0;
                              });

                            },
                            child: BuildIcon(myContext:  context,icon: myNav[0].icon,
                              isSelected: currentPageIndex==0 ? myNav[0].isSelected = true : false,)),
                        InkWell(
                            onTap: (){
                              setState(() {
                                currentPageIndex=1;
                              });
                            },
                            child: BuildIcon(myContext:  context, icon: myNav[1].icon,
                              isSelected:currentPageIndex ==1 ? myNav[1].isSelected =true :false,)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 61,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        InkWell(
                            onTap: (){
                              setState(() {
                                currentPageIndex = 2;
                              });

                            },
                            child: BuildIcon(myContext:  context,icon: myNav[2].icon,
                              isSelected: currentPageIndex == 2 ? myNav[2].isSelected = true : false,)),
                        InkWell(
                            onTap: (){
                              setState(() {
                                currentPageIndex = 3;
                              });
                            },
                            child: BuildIcon(myContext:  context,icon: myNav[3].icon,
                              isSelected:currentPageIndex == 3 ?  myNav[3].isSelected = true : false ,)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 61,
              width: 61,
              child: Center(
                child: Image.asset('assets/plus.png'),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: redcolor,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(-1, 6),
                        blurRadius: 10,
                        color: Color(0xFFF86868).withOpacity(.36))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
