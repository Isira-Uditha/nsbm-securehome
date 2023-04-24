import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:home_security_system/core/activity.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  int value = 0;
  bool positive = false;
  bool loading = false;
  bool _isDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFF262A34),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFB6B6B6)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        toolbarHeight: 130,
        backgroundColor: Color(0xFF181A20),
        title: Row(
          children: [
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xFF262A34),
                    radius: 30,
                    backgroundImage: AssetImage("assets/image/withoutName.png"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('SecureHome'),
                      Text(
                        'Activity List',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ), //Container
            ),
          ],
        ),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF181A20),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              decoration: const BoxDecoration(
                  color: Color(0xFF262A34),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Center(
                        child: AnimatedToggleSwitch<bool>.dual(
                          current: positive,
                          first: false,
                          second: true,
                          dif: 50.0,
                          borderColor: Colors.transparent,
                          borderWidth: 5.0,
                          height: 55,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1.5),
                            ),
                          ],
                          onChanged: (b) {
                            setState(
                              () {
                                positive = b;
                              },
                            );
                            return Future.delayed(Duration(seconds: 2));
                          },
                          colorBuilder: (b) => b ? Colors.red : Colors.green,
                          iconBuilder: (value) => value
                              ? Icon(Icons.cancel)
                              : Icon(Icons.check_circle),
                          textBuilder: (value) => value
                              ? Center(child: Text('Off'))
                              : Center(child: Text('On')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: activity.length,
                          itemBuilder: (context, index) {
                        final item = activity[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x12FFFFFF),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ListTile(
                              title: Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item['name']!,
                                      style:
                                          TextStyle(color: Color(0xFFB6B6B6)),
                                    ),
                                    Text(item['date']!,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Color(0xFFB6B6B6))),
                                  ],
                                ),
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item['category']!,
                                    style: TextStyle(color: Color(0xFFB6B6B6)),
                                  ),
                                  Text(item['time']!,
                                      textAlign: TextAlign.right,
                                      style:
                                          TextStyle(color: Color(0xFFB6B6B6))),
                                ],
                              ),
                            ),
                          ),
                        );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
