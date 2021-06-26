import 'package:flutter/material.dart';

class ScreenSize {
  static double screenheight = 0;
  static double screenwidth = 0;

  void init(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
  }
}

double getProportionateScreenheight(double inputheight) {
  double screenheight = ScreenSize.screenheight;
  return ((inputheight / 759.27) * screenheight);
}

double getProportionateScreenWidth(double inputwidth) {
  double screenwidth = ScreenSize.screenwidth;
  return ((inputwidth / 392.72) * screenwidth);
}
