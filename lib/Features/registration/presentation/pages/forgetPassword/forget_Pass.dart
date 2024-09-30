import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/registration_Button.dart';
import '../../widgets/registration_Text.dart';
import '../../widgets/registration_TextFeild.dart';

class ForgetPage extends StatelessWidget {
  static const String routeName = "ForgetPage";

  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: REdgeInsets.only(left: 20, top: 40),
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: Colors.grey.shade300.withOpacity(0.6),
                shape: BoxShape.circle),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 22.sp,
                color: const Color(0xff2B2B2B),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          RegistrationText(
              mainText: "Forgot Password",
              secondaryText: "Enter your Email account to reset",
              thirdText: "your password"),
          SizedBox(
            height: 20.h,
          ),
          RegistrationTextField(
              labelText: "", hintText: "xxxxxxxx", obscure: false, pass: false),
          SizedBox(
            height: 35.h,
          ),
          RegistrationButton(
            title: "Reset password",
            color: const Color(0xff0D6EFD),
            textColor: Colors.white,
            image: null,
            function: () {
              changePassMessage(context);
            },
          ),
        ],
      ),
    );
  }
  changePassMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: TweenAnimationBuilder(
          curve: Curves.decelerate,
          tween: Tween(begin: 0.0,end: 1.0), duration: Duration(milliseconds: 300), builder: (context, value, child) {
            return Container(
              transform: Matrix4.translationValues(0, 0, 0)..scale(value),
              margin: REdgeInsets.only(right: 3),
              width: 320.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(17.r),
                color: Colors.white.withOpacity(0.95),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff0D6EFD)
                      ),
                      child: TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0),
                        duration: Duration(milliseconds: 500),
                        builder: (context, value, child) {
                          return Container(
                            transform: Matrix4.translationValues(0, 0, 0)..scale(value),
                            child: ImageIcon(
                              const AssetImage("assets/images/registration/email.png"),
                              size: 25.sp,
                              color: Colors.white,
                            ),
                          );
                        },)),
                  SizedBox(height: 25.h,),
                  Text(
                    "Check your email",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2B2B2B),
                        fontFamily: "Poppins",
                        decorationThickness: 0),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "We have send password recovery",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff707B81),
                        decorationThickness: 0,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "code in your email",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff707B81),
                        decorationThickness: 0,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
            );
          },),
        );
      },
    );
  }
}
