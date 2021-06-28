import 'package:flutter/material.dart';
import 'package:gglug/Components/Screensize.dart';
import 'package:gglug/SplashScreen.dart';

import 'Loginpage/Login.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setloginfalse();
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return LoginPage();
                },
              ),
            );
          },
          child: Text("Click here to logout"),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      // elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.notifications,
        ),
        onPressed: () {
          print("bell");
          getProportionateScreenWidth(100.0);
          getProportionateScreenHeight(100.0);
        },
      ),
      title: Center(
        child: Text("GITAM-GLUG"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
