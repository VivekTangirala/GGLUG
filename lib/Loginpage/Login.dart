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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),////Hello world
                        fit: BoxFit.fill,
                    ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'),
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'),
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 0,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'),
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text("GITAM GLUG LOGIN", style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold)),
                        ),
                      )
                    )
                  ],
                )
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, 2),
                          blurRadius: 20,
                          offset: Offset(0,10)

                        )
                      ]

                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email or Phone',
                              hintStyle: TextStyle(color: Colors.grey[400])
                            )
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey),),
                          ),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(143, 148, 251, 6),
                        ]
                      )
                    ),
                    child: Center(
                      child: Text('Login',style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ,),

                    ),
                  ),
                  SizedBox(height: 70,),
                  Text('Forgot Password?', style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1) ,fontWeight:  FontWeight.bold),),
                ],
              ),
            )
          ],
        ),
      ),
    );;
  }

  Widget _body(){
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
