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

<<<<<<< HEAD
  SafeArea _body() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          childern: <Widget>[
            Container(
              height: 64,
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                   radius:32,
                   backgroundImage: NetworkImage('Glug_logo.jpg'),
                  )
                  ,SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Text('GLUG'),
                     Text('69')
                    ],
                  )
                ],
              ),  
            )
            Expanded,(
              child:GridView.builder(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2
                primary: false,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)

                    ),
                    elevation: 4,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        SvgPicture,network('Glug_logo.jpg', height:128,),
                        Text('Members')
                      ],
                    )
                  )
                ]
              )
            )  
          ],       
        ),
      ),  
    ); 
=======
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
>>>>>>> 54adaf2321b06b93ca4f546c7dc4c490ddf02df7
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
