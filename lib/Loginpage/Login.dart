import 'package:flutter/material.dart';
import 'package:gglug/Components/Screensize.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          _backgroundlogo(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _login(),
            ],
          )
        ],
      ),
    );
  }

  Widget _login() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 10,
              horizontal: MediaQuery.of(context).size.width / 10),
          height: MediaQuery.of(context).size.height * 2 / 4,
          width: MediaQuery.of(context).size.width * 3 / 4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        )
      ],
    );
  }

  Widget _backgroundlogo() {
    return Container(
      height: MediaQuery.of(context).size.height * 2 / 3,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 3),
            bottomRight: Radius.circular(MediaQuery.of(context).size.width / 3),
          ),
        ),
      ),
    );
  }
}
