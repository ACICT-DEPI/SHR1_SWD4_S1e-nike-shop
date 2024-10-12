import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Features/registration/presentation/manger/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Config/routes/app_routes.dart';
import '../widgets/registration_Button.dart';
import '../widgets/registration_Text.dart';
import '../widgets/registration_TextFeild.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xffF7F7F9),
            body: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: widgetHeight(context: context, height: 30),),
                    RegistrationText(
                        mainText: "Hello Again!",
                        secondaryText: "Fill your details or continue with",
                        thirdText: "social media"),
                    SizedBox(
                      height: 25.h,
                    ),
                    RegistrationTextField(
                      textEditingController: email,
                      labelText: "Email Address",
                      hintText: "xyz@gmail.com",
                      obscure: false,
                      pass: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RegistrationTextField(
                      textEditingController: password,
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
                            Navigator.pushNamed(
                                context, AppRoutesName.forgetPass);
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
                      function: () {
                        RegisterCubit.get(context).login(
                            emailAddress: email.text,
                            password: password.text,
                            context: context);
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RegistrationButton(
                      title: "Sign In with Google ",
                      color: Colors.grey.shade200.withOpacity(0.95),
                      textColor: Colors.black,
                      image: const AssetImage(
                          "assets/images/registration/google.png"),
                      function: () {},
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 50),),
                    Padding(
                      padding: REdgeInsets.only(bottom: 35),
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
                              Navigator.pushNamed(
                                  context, AppRoutesName.signUp);
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
              ),
            ),
          );
        },
      ),
    );
  }
}
