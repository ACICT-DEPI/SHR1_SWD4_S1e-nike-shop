import 'package:e_commerce/Config/routes/appRoutes.dart';
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

          SizedBox(
            height: 100.h,
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
          function: (){},
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
          SizedBox(height: 130.h,),
          Row(
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
          )
        ],
      ),
    );
  }
}
