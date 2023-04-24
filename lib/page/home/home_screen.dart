import 'package:flutter/material.dart';
import 'package:home_security_system/components/coustom_bottom_nav_bar.dart';
import 'package:home_security_system/core/colors.dart';
import 'package:home_security_system/enums.dart';
import 'package:home_security_system/page/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
