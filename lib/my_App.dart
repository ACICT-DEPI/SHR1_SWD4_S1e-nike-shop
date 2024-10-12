import 'package:e_commerce/Config/routes/app_routes.dart';
import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:e_commerce/Features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      builder: (context, child) {
        return  MaterialApp(
          initialRoute: HomeCubit.get(context).firebaseuser==null?
              CacheData.getOnBoardingCheckData(key: "OnBoardingCheckData")==null?AppRoutesName.onBoarding:
          AppRoutesName.login:AppRoutesName.homelayout,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) =>AppRoute.onGenerate(settings),
        );
      },);
  }
}