import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/Features/home/data/repositories/porduct_repo_Imp.dart';
import 'package:e_commerce/Features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/ApiServer/productApi/product_api.dart';
import 'Core/cache/cache_data.dart';
import 'my_App.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheData.cacheInit();
   CacheData.getOnBoardingCheckData(key: "OnBoardingCheckData");
  runApp(DevicePreview(
    builder: (context) => BlocProvider(create: (context) =>  HomeCubit(ProductRepoImp(ProductApi(Dio()))),
    child: const MyApp(),
    ),
    enabled: false,
  ) );
}
