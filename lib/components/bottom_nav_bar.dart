import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/constants.dart';
import 'package:flutter_ui_challenge/widgets/Tab_Item.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 200),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
          color: kTabBarColor,
          borderRadius: BorderRadius.circular(80),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(40),
                blurRadius: 6,
                offset: Offset(0, 0)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabItem(icon: 'assets/icons/home.svg',name: 'HOME',event: (){},isActive: true,timeFactor: 1,),
            TabItem(icon: 'assets/icons/search.svg',name: 'SEARCH',event: (){},isActive: false,timeFactor: 2,),
            TabItem(icon: 'assets/icons/settings.svg',name: 'SETTING',event: (){},isActive: false,timeFactor: 3,),
            TabItem(icon: 'assets/icons/profile.svg',name: 'PROFILE',event: (){},isActive: false,timeFactor: 4,),
          ],
        ),
      ),
    );
  }
}
