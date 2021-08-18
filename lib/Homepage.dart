import 'dart:html';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:gglug/Loginpage/Login.dart';
import 'package:gglug/components/Screensize.dart';

List<String> l1 = [
  'App development',
  'App development',
  'App development',
  'Web development',
];

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuDashboardPageState();
  }
}

class _MenuDashboardPageState extends State<MyHomePage> {
  bool isCollapsed = true;
 late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 400);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          //menu(context),
          dashboard(context),
        
      
    );
  }
  Widget _body(){
    return Container(child:Text(""));
  }


  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("data", style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10),
            Text("about", style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10),
            Text("profile",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10),
            Text("data", style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return Column(
      children: [
        AnimatedPositioned(
          duration: duration,
          top: isCollapsed ? 0 : 0.2 * screenHeight,
          bottom: isCollapsed ? 0 : 0.2 * screenWidth,
          left: isCollapsed ? 0 : 0.6 * screenWidth,
          right: isCollapsed ? 0 : -0.4 * screenWidth,
          child: Material(
            animationDuration: duration,
            borderRadius: BorderRadius.all(Radius.circular(40)),
            elevation: 8,
            color: Colors.grey[400],
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                            child: Icon(Icons.menu, color: Colors.white),
                            onTap: () {
                              setState(() {
                                isCollapsed = !isCollapsed;
                              });
                            }),
                        Text(
                          "GLUG",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Icon(Icons.settings, color: Colors.white),
                      ]),
                  Container(
                    child: Expanded(
                      child: GridView.builder(
                        itemCount: l1.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 4,
                            child: Image.asset(
                              l1[index],
                              fit: BoxFit.fill,
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
    );
  }
}
