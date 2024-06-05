import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondOnboardView extends StatelessWidget {
  const SecondOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0),
      duration: const Duration(milliseconds: 750), builder: (context, value, child) {
        return  Container(
          transform: Matrix4.translationValues(0, 0, 0)..scale(value),
          child: Column(
            children: [
              SizedBox(height: 140.h,),
              Row(
                children: [
                  Image(image: AssetImage("assets/images/onBoard/onboardTwo.png")),
                  SizedBox(width: 15.w,)
                ],
              ),
              SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let’s start journey\n       with Nike",
                    style: TextStyle(
                        color: Color(0xffECECEC),
                        fontSize: 34.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Raleway"
                    ),),
                  SizedBox(width: 20.w,)
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Smart, Gorgeous & Fashionable \n         Collection Explor Now",
                    style: TextStyle(
                        color: Color(0xffECECEC).withOpacity(0.9),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"
                    ),),
                  SizedBox(width: 20.w,)
                ],
              ),

            ],
          ),
        );
      },);
  }
}
