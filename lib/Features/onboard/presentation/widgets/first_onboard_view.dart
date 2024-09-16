import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstOnboardView extends StatelessWidget {
  const FirstOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0),
        duration: const Duration(milliseconds: 500), builder: (context, value, child) {
          return  Container(
            transform: Matrix4.translationValues(0, 0, 0)..scale(value),
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30.sp,
                          fontFamily: "Raleway"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nike",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30.sp,
                          fontFamily: "Raleway"),
                    )
                  ],
                ),
                SizedBox(height: 40.h,),
                const Image(image: AssetImage("assets/images/onBoard/Vector.png")),
                Container(
                    transform: Matrix4.translationValues(7, 10,0 )..rotateZ(25.14),
                    child:  Image(
                      image: const AssetImage("assets/images/onBoard/leg.png"),fit: BoxFit.fitWidth,
                      height: 290.h,
                      width: 370.w,
                    )),

              ],
            ),
          );
        },);
  }
}
