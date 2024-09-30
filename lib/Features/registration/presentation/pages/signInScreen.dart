import 'package:e_commerce/Config/routes/app_routes.dart';
import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/registration_Button.dart';
import '../widgets/registration_Text.dart';
import '../widgets/registration_TextFeild.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 3,
          ),
          RegistrationText(
              mainText: "Hello Again!",
              secondaryText: "Fill your details or continue with",
              thirdText: "social media"),
          SizedBox(
            height: 25.h,
          ),
          RegistrationTextField(
            labelText: "Email Address",
            hintText: "xyz@gmail.com",
            obscure: false,
            pass: false,
          ),
          SizedBox(
            height: 30.h,
          ),
          RegistrationTextField(
            labelText: "Password",
            hintText: "********",
            obscure: true,
            pass: true,
          ),
          SizedBox(height: 12.h,),
          Row(
            children: [
              const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutesName.forgetPass);
              },
              child: Text("Recovery Password",
              style: TextStyle(
                fontFamily: "Rlaeway",
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff707B81)
              ),),
            ),
              SizedBox(width: 27.w,)
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          RegistrationButton(
              title: "Sign In",
              color: const Color(0xff0D6EFD),
              textColor: Colors.white,
              image: null,
          function: (){
                debugPrint(CacheData.check.toString());
          },
          ),
          SizedBox(
            height: 20.h,
          ),
          RegistrationButton(
              title: "Sign In with Google ",
              color: Colors.grey.shade200.withOpacity(0.95),
              textColor: Colors.black,
              image: AssetImage("assets/images/registration/google.png"),
          function: (){},
          ),
          Spacer(
            flex: 5,
          ),
          Padding(
            padding:  REdgeInsets.only(bottom: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New User?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      fontFamily: "Raleway",
                      color: const Color(0xff6A6A6A)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutesName.signUp);
                  },
                  child: Text(
                    " Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      fontFamily: "Raleway",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
