

import 'package:e_commerce/Core/components/reuseable_components.dart';
import 'package:e_commerce/Features/SplashScreen/presentation/pages/SplashView.dart';
import 'package:e_commerce/Features/onboard/presentation/pages/onBoardingScreen.dart';
import 'package:e_commerce/Features/registration/presentation/pages/forgetPassword/forget_Pass.dart';
import 'package:e_commerce/Features/registration/presentation/pages/signInScreen.dart';
import 'package:e_commerce/Features/registration/presentation/pages/signupScreen.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String splashScreen="/";
  static const String onBoarding="onBoarding";
  static const String login="login";
  static const String signUp="signUp";
  static const String forgetPass="forgetPass";
}
class AppRoute{
  static Route onGenerate(RouteSettings settings){
    switch(settings.name){
      case AppRoutesName.splashScreen:
      return MaterialPageRoute(builder: (context) => SplashView(),);
      case AppRoutesName.onBoarding:
        return MaterialPageRoute(builder: (context) => OnBoarding(),);
      case AppRoutesName.login:
        return MaterialPageRoute(builder: (context) => const SignInView(),);
      case AppRoutesName.signUp:
        return MaterialPageRoute(builder: (context) => const SignupView(),);
      case AppRoutesName.forgetPass:
        return MaterialPageRoute(builder: (context) => const ForgetPage(),);
      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }

  }
}