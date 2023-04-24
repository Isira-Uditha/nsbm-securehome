import 'package:flutter/material.dart';
import 'package:home_security_system/core/colors.dart';
import 'package:home_security_system/core/space.dart';
import 'package:home_security_system/core/text_style.dart';
import 'package:home_security_system/data/demo.dart';
import 'package:home_security_system/page/login_page.dart';
import 'package:home_security_system/widget/main_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: blackBG,
            child: Image.asset(
              'assets/image/burglar.jpg',
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 1.5,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/image/withName.png',
                      height: height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SpaceVH(height: 1.0),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '',
                        style: headline,
                      ),
                    ]),
                  ),
                  SpaceVH(height: 20.0),
                  Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  Mainbutton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => LoginPage()));
                    },
                    btnColor: blueButton,
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
