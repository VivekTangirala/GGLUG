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
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 64,
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage('Glug_logo.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text('GLUG'), Text('69')],
                  )
                ],
              ),
            ),
            Container(
              child:GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) => Card(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),	
                  elevation:4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('assets/Glug_logo.jpg'),),
                      Text('Members')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }




  AppBar _appBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {},
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
