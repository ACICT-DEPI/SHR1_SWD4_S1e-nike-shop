import 'package:flutter/material.dart';

double widgetWidth({required BuildContext context, required double width}){
  double screenHeight=MediaQuery.of(context).size.width;
  double responsiveWidth=(screenHeight/375)*width;
  return responsiveWidth;
}