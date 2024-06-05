import 'dart:async';

import 'package:e_commerce/Config/routes/appRoutes.dart';
import 'package:e_commerce/Features/SplashScreen/presentation/widgets/IconAnimation.dart';
import 'package:flutter/material.dart';

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
    super.initState();
    splashScreen();
  }
  void splashScreen(){

    Timer.periodic(Duration(milliseconds: 100), (Timer timer) {
      setState(() {
        counter += 0.0095;
        value=0;
      });

      if (counter >= 1.0) {
        Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.onBoarding, (route) => false);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AnimatedTextType(),
            ],
          )
        ],
      ),
    );
  }
}
