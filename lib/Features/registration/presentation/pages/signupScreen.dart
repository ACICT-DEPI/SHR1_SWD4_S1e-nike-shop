import 'package:e_commerce/Config/routes/app_routes.dart';
import 'package:e_commerce/Features/registration/presentation/widgets/registration_Button.dart';
import 'package:e_commerce/Features/registration/presentation/widgets/registration_Text.dart';
import 'package:e_commerce/Features/registration/presentation/widgets/registration_TextFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupView extends StatelessWidget {

  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
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
          ),
          SizedBox(
            height: 8.h,
          ),
          RegistrationText(
              mainText: "Register Account",
              secondaryText: "Fill your details or continue with",
              thirdText: "social media"),
          SizedBox(
            height: 15.h,
          ),
          RegistrationTextField(
              labelText: "Name",
              hintText: "xxxxxxxx",
              obscure: false,
              pass: false),
          SizedBox(
            height: 8.h,
          ),
          RegistrationTextField(
            labelText: "Email Address",
            hintText: "xyz@gmail.com",
            obscure: false,
            pass: false,
          ),
          SizedBox(
            height: 20.h,
          ),
          RegistrationTextField(
            labelText: "Password",
            hintText: "********",
            obscure: true,
            pass: true,
          ),
          SizedBox(
            height: 30.h,
          ),
          RegistrationButton(
              title: "Sign up",
              color: const Color(0xff0D6EFD),
              textColor: Colors.white,
              image: null,
            function: (){},
          ),
          SizedBox(
            height: 13.h,
          ),
          RegistrationButton(
              title: "Sign up with Google ",
              color: Colors.grey.shade200.withOpacity(0.95),
              textColor: Colors.black,
              image: AssetImage("assets/images/registration/google.png"),
            function: (){},
          ),
          Spacer(flex: 2,),
          Padding(
            padding:  REdgeInsets.only(bottom: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      fontFamily: "Raleway",
                      color: const Color(0xff6A6A6A)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.login,(route) => false,);
                  },
                  child: Text(
                    " Log In",
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
