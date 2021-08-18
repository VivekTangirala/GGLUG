// import 'package:flutter/material.dart';

// class ScreenSize {
//   static double _screenheight = 0.0;
//   static double _screenwidth = 0.0;

//   void init(BuildContext context) {
//     _screenheight = MediaQuery.of(context).size.height;
//     _screenwidth = MediaQuery.of(context).size.width;
//   }
// }

//  getProportionateScreenheight(double inputheight) {
//   double screenheight = ScreenSize._screenheight;
//   return ((inputheight / 759.27) * screenheight);
// }

//  getProportionateScreenWidth(double inputwidth) {
//   double screenwidth=0;
//   //screenwidth = ScreenSize._screenwidth;
//   print("object");
//   print(screenwidth);
//   return ((inputwidth / 392.72) * screenwidth);
// }
import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  //static double defaultSize;
  //static Orientation orientation;

  void main(BuildContext context) {
    
     MediaQueryData _mediaQueryData = MediaQuery.of(context);

     screenWidth = _mediaQueryData.size.width;
    print(screenWidth);
    print("Object1");
    screenHeight = _mediaQueryData.size.height;
    // orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return ((inputHeight / 683.42) * screenHeight);
}

// Get the proportionate height as per screen size
getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  print("object");
  print(inputWidth);
  print(SizeConfig.screenHeight);
  return ((inputWidth / 531.42) * screenWidth);
}
double getScrenHeight(){
  return SizeConfig.screenHeight;
}
double getScreenWidth(){
  return SizeConfig.screenWidth;
}