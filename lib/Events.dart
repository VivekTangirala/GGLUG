import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


List<String> l1 = [
  'Event1',
  'Event2' ,
  'Event3' ,
  
]; 

List<String> l2 = [
  "Assets/Images/Glug_logo.jpg",
  "Assets/Images/Ruthwik.webp",
  "Assets/Images/vivek.jpg",
  
];

class Events extends StatelessWidget{
  @override 
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF40C4FF),
      body: ListView(
        children: <Widget>[
          Padding( 
            padding: EdgeInsets.only(top:15.0,left:10.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                   Icons.arrow_back_ios,
                   color: Colors.white,
                  ),
                  onTap: () {
                   Navigator.of(context).pop();
                  },
                ),
              ]  
            ) 
          ),
          SizedBox(height:25.0),
          Padding( 
            padding: EdgeInsets.only(left:40.0),
            child: Row(  
              children: <Widget>[
                Text('Events',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 152.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView.builder(
              padding:
                EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: l1.length,
              itemBuilder: (BuildContext context, int index) {
                return new GestureDetector(
                  onTap: () {
                    if (index == 0) {
                          
                    }
                  },
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: new EdgeInsets.all(50),
                            alignment: FractionalOffset.topLeft,
                            padding: EdgeInsets.all(70.0),
                            height: 250.0,
                            decoration: new BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(8.0),
                              
                              boxShadow: <BoxShadow>[
                                new BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10.0,
                                  offset: new Offset(0.0, 10.0),
                                ),
                              ],
                              
                            ),
                            
                            
                             child: Padding(padding: EdgeInsets.only(bottom: 40,top: 10),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 
                                 children:[
                                 Text(
                                 l1[index],
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
                          Divider(
                            height: 20.0,
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                );
              },
            ) ,
          ),
        ]
      ),
    );
  }
}



