import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gglug/About.dart';

import 'package:gglug/Members.dart';
import 'package:gglug/profile.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  

  @override
  void initState() {
    super.initState();
  }
  bool menuOpen = false;
  double tranx = 0, trany=0, scale=1.0;
  List<String> l1 = [
    'Assets/Images/members1.png',
    'Assets/Images/linux.jpg',
    'Assets/Images/img1.jpg',
    'Assets/Images/Glug_logo.jpg',
    'Assets/Images/Burgericon.png',
    'Assets/Images/members.png',
    
  ];
  List<String> l2 = [
     
    'Members',
    'Projects',
    'Events',
    'About',
    'data',
    'data',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      drawer: Drawer(
        
        child: Column(
          
          children: <Widget>[
            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.white,
                child: Column(
                  children:<Widget> [
                    Container(
                      height: 64,
                      margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage('Assets/Images/Glug_logo.jpg')
                            ),
                            SizedBox(width: 16),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[Text('GLUG')],
                            )
                          ],
                        ),
                      ),
                  ]
                ),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'About',  
              ),
              onTap: (){
                Navigator.push(context,CupertinoPageRoute(builder: (context)=> About(),
                ),
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',  
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_alert_outlined),
              title: Text(
                'Notifications',  
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',  
              ),
            ),
          ],
        ),
      ),
      appBar: _appBar(),
      body: _body(),
      
    );
  }
  SafeArea _body() {
    var size = MediaQuery.of(context).size;
    var ui;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 2 / 3,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 5),
                    bottomRight: Radius.circular(MediaQuery.of(context).size.width / 5),
                  ),      
                ),
              ),
            ),         

          Padding(
            padding:  EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: 5),
                  color: Colors.blue.shade400,
                  child: Text('GNU Linux Users Group',
                     textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                     style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30,color: Colors.white),
                      
                  ),
                ),  
                  
                Expanded(
                  child: GridView.builder(
                    itemCount: l1.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12
                    ),

                    itemBuilder: (BuildContext context, int index){
                      return new InkWell(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => Members(),
                            ),
                          );
                        }
                        if (index == 1) {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>
                            ),
                          );
                        }

                      },
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(l1[index],),
                                fit: BoxFit.cover, 
                              ),
                              
                            ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               
                               children:[
                               Text(
                               l2[index],
                               style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,


                                ),
                              ),
                            ),],
                          ),
                        ),
                      ),
                      );
                    }    
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );  
  }

  AppBar _appBar() {
    
    return AppBar(
      backgroundColor: Colors.blue.shade400,
      title: Center(
        child: Text(""),
      ),
      actions: [
        IconButton(
          onPressed: () {Navigator.push(context,CupertinoPageRoute(builder: (context)=> profile(),
                ),
                );},
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}