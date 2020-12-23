import 'package:flutter/material.dart';


class NavigatorIcon {
  String icon;
  bool isSelected;

  NavigatorIcon({this.icon, this.isSelected});
}

final  List<NavigatorIcon> myNav = [
  NavigatorIcon(icon: 'assets/home.png', isSelected: true),
  NavigatorIcon(icon: 'assets/search.png', isSelected: false),
  NavigatorIcon(icon: 'assets/tab3.png', isSelected: false),
  NavigatorIcon(icon: 'assets/avatar.png', isSelected: false),
];
int currentPageIndex=0;