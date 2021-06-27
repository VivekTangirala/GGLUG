import 'package:flutter/material.dart';
import 'package:gglug/Homepage.dart';
import 'package:gglug/Loginpage/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _login=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:_login==true? MyHomePage():LoginPage()
    );
  }
} //end
