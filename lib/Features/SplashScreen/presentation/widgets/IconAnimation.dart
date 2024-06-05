import 'package:flutter/material.dart';

class IconAnimation extends StatelessWidget {
   IconAnimation({super.key,required this.value});
  double value;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInExpo,
      duration: const Duration(seconds: 3),
      transform: Matrix4.translationValues(0, value, 0),
      child: const Image(image: AssetImage("assets/images/SplashScreen/Vector.png")),
    );
  }
}
