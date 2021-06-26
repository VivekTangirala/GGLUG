import 'package:flutter/material.dart';
import 'package:gglug/Loginpage/Login.dart';

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

  SafeArea _body() {
    return SafeArea(
      child: Container(
        child: LoginPage(),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {
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
