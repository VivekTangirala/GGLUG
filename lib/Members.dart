import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> l1 = [
  'VIVEK',
  'RUTHWIK',
  'SRAVANTH',
  
];
List<String> l2 = [
  'App development',
  'App development',
  'App development',
  
];
List<String> l3 = [
  'HALLMember1',
  'HALLMember2',
  'HALLMember3',
  
];
List<String> l4 = [
  'HALLPosition2',
  'HALLPosition3',
  'HALLPosition4',
  
];
List<String> l5 = [
  "Assets/Images/vivek.jpg",
  "Assets/Images/Ruthwik.webp",
  "Assets/Images/linux.jpg",
];

class Members extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page 2',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: new AppBar(
            title: Row(
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  "MEMBERS",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.grey,
            bottom: TabBar(tabs: [
              Tab(
                child: Text(
                  "Current Members",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "HALL OF FAME",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ], indicatorColor: Colors.black),
          ),
          body: TabBarView(children: [
            Tab1(),
            Tab2(),
          ]),
        ),
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          padding:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: l5.length,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              onTap: () {
                
              },
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: new EdgeInsets.only(left: 50.0),
                        alignment: FractionalOffset.topLeft,
                        padding: EdgeInsets.only(left: 35.0),
                        height: 95.0,
                        child: Column(children: <Widget>[
                          SizedBox(height: 10.0),
                          Text(
                            l1[index],
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            l2[index],
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ]),
                        decoration: new BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          shape: BoxShape.rectangle,
                          borderRadius: new BorderRadius.circular(8.0),
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                              color: Colors.brown,
                              blurRadius: 10.0,
                              offset: new Offset(0.0, 10.0),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20.0,
                      ),
                    ],
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(vertical: 14.0),
                    alignment: FractionalOffset.centerLeft,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: new ClipOval(
                      child: Image.asset(
                        l5[index],
                        fit: BoxFit.cover,
                        height: 80.0,
                        width: 80.0,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _padding = 10.0;
    var f1 = 18.0;
    var f2 = 12.0;
    var _screenwidth = MediaQuery.of(context).size.width;
    var _crossAxisSpacing = 10.0;
    var _width = (_screenwidth - ((3 - 1) * _crossAxisSpacing)) / 3;
    var _imgwidth = _width - _padding*4;
    var _imgheight = _imgwidth;

    var _height = _imgheight + f1 + f2 + _padding * 2;
    var _aspectratio = _width / _height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: GridView.builder(
                  padding: EdgeInsets.all(_padding),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: l1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: _aspectratio,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: _crossAxisSpacing,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(8.0),
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 0.0,
                        ),
                        Hero(
                          tag: "hero($index)",
                          child: GestureDetector(
                            onTap: () {
                             
                            },
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: ClipOval(
                                    child: Image.asset(
                                      l5[index],
                                      fit: BoxFit.cover,
                                      height: _imgheight,
                                      width: _imgwidth,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5.0,
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          l1[index],
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: f1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        Text(
                          l2[index],
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: f2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class MembersInfo extends StatelessWidget {
  var index1;

  MembersInfo({required Key key1, @required this.index1}) : super(key: key1);
  //var i = int;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Text(
                l3[index1],
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xFFEEEEEE),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 150.0,
              ),
              Hero(
                tag: "hero($index1)",
                child: GestureDetector(
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        l5[index1],
                        fit: BoxFit.cover,
                        height: 200.0,
                        width: 200.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Text(
                l3[index1],
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                l4[index1],
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
