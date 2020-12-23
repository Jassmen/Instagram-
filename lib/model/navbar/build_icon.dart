import 'package:flutter/material.dart';

class BuildIcon extends StatelessWidget {
  final BuildContext myContext;
  final String icon;
  final bool isSelected;


  BuildIcon({ @required this.myContext,
    @required this.icon,
    @required this.isSelected });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(myContext).size.width / 2) - 30.5) / 2,
      height: 70,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(icon),
            SizedBox(
              height: 5,
            ),
            isSelected
                ? Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2)),
            )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}