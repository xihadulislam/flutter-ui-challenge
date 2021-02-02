import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/components/app_bar.dart';
import 'package:flutter_ui_challenge/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppbar(context, 'Good to Go'),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

