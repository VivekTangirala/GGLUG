import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  get mainColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(
          children: [
            _backgroundlogo(),
            _buildLogo(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _login(),
                _buildForgetPasswordButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text("Forgot Password?"),
          color: Colors.grey[300],
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Text('G-GLUG',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
  //  Widget _buildSocialBtnRow() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //           height: 60,
  //           width: 60,
  //           decoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             color: mainColor,
  //             boxShadow: [
  //               BoxShadow(
  //                   color: Colors.black26,
  //                   offset: Offset(0, 2),
  //                   blurRadius: 6.0)
  //             ],
  //           ),
  //           child: Icon(
  //             Icons.
  //             color: Colors.white,
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  //   Widget _buildGetInButton() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: <Widget>[
  //       FlatButton(
  //         onPressed: () {},
  //         child: Text("Let me in",style: TextStyle(fontSize: MediaQuery.of(context).size.height/25,fontWeight: FontWeight.bold),),
  //         color: Colors.orange,
  //         textColor: Colors.white,
  //       ),
  //     ],
  //   );
  // }
  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.0 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20, top: 20),
          child: RaisedButton(
            elevation: 10.0,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {},
            child: Text(
              "Join",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 25,
                fontWeight: FontWeight.bold),
          ),
          textColor: Colors.orange,
          color: Colors.white,
        ),
      ],
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
                BorderRadius.circular(MediaQuery.of(context).size.width / 20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildName(),
              _buildEmailRow(),
              _buildPasswordRow(),
              _buildLoginButton(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 40,
            fontWeight: FontWeight.normal),
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: Colors.orange[300],
          ),
          labelText: 'E-mail',
        ),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 40,
            fontWeight: FontWeight.normal),
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.security,
            color: Colors.orange[300],
          ),
          labelText: 'Password',
        ),
      ),
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
            bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 5),
            bottomRight: Radius.circular(MediaQuery.of(context).size.width / 5),
          ),
        ),
      ),
    );
  }
}
