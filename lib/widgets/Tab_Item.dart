import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class TabItem extends StatelessWidget {

  final String icon, name;
  final GestureTapCallback event;
  final bool isActive;
  final int timeFactor;

  TabItem({
    @required this.icon,
    @required this.name,
    @required this.event,
    @required this.isActive,
    @required this.timeFactor

  });


  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 400 * timeFactor),
      slidingBeginOffset: const Offset(-1.0, 0),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: isActive? kPrimaryColor : Colors.transparent
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon, color: kTextColor, height: 18,),
              SizedBox(height: 4.0,),
              Text(name, style: TextStyle(fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  color: kTextColor),)
            ],

          ),
        ),
      ),
    );
  }
}
