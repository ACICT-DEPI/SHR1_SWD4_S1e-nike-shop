import 'dart:async';

import 'package:e_commerce/Config/routes/app_routes.dart';
import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:e_commerce/Features/SplashScreen/presentation/widgets/IconAnimation.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/manager/home_cubit.dart';
import '../widgets/Animated_text.dart';

class SplashView extends StatefulWidget {
   SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  double value=-450;
  double counter=0;
  @override
  void initState() {
    splashScreen();
    super.initState();
  }
  void splashScreen(){

    Timer.periodic(Duration(milliseconds: 100), (Timer timer) {
      setState(() {
        counter += 0.02;
        value=0;
      });

      if (counter >= 1.0) {
        if(HomeCubit.get(context).firebaseuser==null){
          if(CacheData.getOnBoardingCheckData(key: "OnBoardingCheckData")==null){
            Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.onBoarding, (route) => false,);
          }
          else{
            Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.login, (route) => false,);
          }
        }
        else{
          Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.homelayout, (route) => false,);
        }
        timer.cancel();
        // Navigate to the next screen after loading is complete
        // For demonstration, let's navigate to HomeScreen
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D6EFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
           IconAnimation(value: value,),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextType(),
            ],
          )
        ],
      ),
    );
  }
}
