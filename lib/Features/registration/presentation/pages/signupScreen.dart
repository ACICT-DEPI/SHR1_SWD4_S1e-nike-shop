
import 'package:e_commerce/Core/utils/responsiveUi/responsive_height.dart';
import 'package:e_commerce/Features/registration/presentation/manger/register_cubit.dart';
import 'package:e_commerce/Features/registration/presentation/widgets/registration_Button.dart';
import 'package:e_commerce/Features/registration/presentation/widgets/registration_Text.dart';
import 'package:e_commerce/Features/registration/presentation/widgets/registration_TextFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Config/routes/app_routes.dart';

class SignupView extends StatelessWidget {

  SignupView({super.key});

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => RegisterCubit(),
      lazy: false,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xffF7F7F9),
              body: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        height: widgetHeight(context: context, height: 8),
                      ),
                      RegistrationText(
                          mainText: "Register Account",
                          secondaryText: "Fill your details or continue with",
                          thirdText: "social media"),
                      SizedBox(
                        height: widgetHeight(context: context, height: 15),
                      ),
                      RegistrationTextField(
                          textEditingController: name,
                          labelText: "Name",
                          hintText: "xxxxxxxx",
                          obscure: false,
                          pass: false),
                      SizedBox(
                        height: widgetHeight(context: context, height: 8),
                      ),
                      RegistrationTextField(
                        textEditingController: email,
                        labelText: "Email Address",
                        hintText: "xyz@gmail.com",
                        obscure: false,
                        pass: false,
                      ),
                      SizedBox(
                        height: widgetHeight(context: context, height: 20),
                      ),
                      RegistrationTextField(
                        textEditingController: password,
                        labelText: "Password",
                        hintText: "********",
                        obscure: true,
                        pass: true,
                      ),
                      SizedBox(
                        height: widgetHeight(context: context, height: 30),
                      ),
                      RegistrationButton(
                        title: "Sign up",
                        color: const Color(0xff0D6EFD),
                        textColor: Colors.white,
                        image: null,
                        function: () {
                          RegisterCubit.get(context).singUp(
                              name: name.text, Email: email.text, password: password.text,
                              Nav: (){
                                Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.homelayout, (route) => false,);
                              });
                        },
                      ),
                      SizedBox(
                        height: widgetHeight(context: context, height: 13),
                      ),
                      RegistrationButton(
                        title: "Sign up with Google ",
                        color: Colors.grey.shade200.withOpacity(0.95),
                        textColor: Colors.black,
                        image: AssetImage("assets/images/registration/google.png"),
                        function: () {
                          RegisterCubit.get(context).signInWithGoogle(context);
                        },
                      ),
                     SizedBox(height: widgetHeight(context: context, height: 30),),
                      Padding(
                        padding: REdgeInsets.only(bottom: 18.0),
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
                                Navigator.pushNamedAndRemoveUntil(
                                  context, AppRoutesName.login, (route) => false,);
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
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
