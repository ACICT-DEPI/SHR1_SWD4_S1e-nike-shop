import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedTextType extends StatelessWidget {
  const AnimatedTextType({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("Nike",
          curve: Curves.bounceIn,
          textStyle: TextStyle(
              color: Colors.white,
              fontSize: 55.sp,
              fontWeight: FontWeight.bold),
          speed: const Duration(milliseconds: 500)),
    ]);
  }
}
