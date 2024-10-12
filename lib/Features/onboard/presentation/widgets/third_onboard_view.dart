import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Core/utils/responsiveUi/responsive_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdOnboardView extends StatelessWidget {
  const ThirdOnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0),
        duration: const Duration(milliseconds: 750), builder: (context, value, child) {
          return Container(
            transform: Matrix4.translationValues(0, 0, 0)..scale(value),
            child: Column(
              children: [
                SizedBox(height:widgetHeight(context: context, height: 90)),
                Row(
                  children: [
                    Container(
                      transform: Matrix4.translationValues(20, 0, 0)..rotateZ(50.36),
                      child: Image(image: AssetImage("assets/images/onBoard/onboardThree.png"),fit: BoxFit.fitWidth,
                        width: widgetWidth(context: context, width: 340),height: widgetHeight(context: context, height: 320),),
                    ),
                    SizedBox(width: widgetWidth(context: context, width: 15),)
                  ],
                ),
                SizedBox(height:widgetHeight(context: context, height: 30),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You Have the",
                      style: TextStyle(
                          color: Color(0xffECECEC),
                          fontSize: 34.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Raleway"
                      ),),
                    SizedBox(width: widgetWidth(context: context, width: 20),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Power To",
                      style: TextStyle(
                          color: Color(0xffECECEC),
                          fontSize: 34.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Raleway"
                      ),),
                    SizedBox(width: widgetWidth(context: context, width: 20))
                  ],
                ),
                SizedBox(height: widgetHeight(context: context, height: 15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("There Are Many Beautiful And Attractive",
                      style: TextStyle(
                          color: Color(0xffECECEC).withOpacity(0.9),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"
                      ),),
                    SizedBox(width: widgetWidth(context: context, width: 20)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Plants To Your Room",
                      style: TextStyle(
                          color: const Color(0xffECECEC).withOpacity(0.9),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"
                      ),),
                    SizedBox(width: widgetWidth(context: context, width: 20)),
                  ],
                ),
              ],
            ),
          );
        },);
  }
}
