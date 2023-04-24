import 'package:flutter/material.dart';
import 'package:home_security_system/core/colors.dart';
import 'package:home_security_system/core/space.dart';
import 'package:home_security_system/core/text_style.dart';
import 'package:home_security_system/page/sign_up.dart';
import 'package:home_security_system/widget/main_button.dart';
import 'package:home_security_system/widget/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Container(),
        ),
      ),
    );
  }
}
