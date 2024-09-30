import 'package:e_commerce/Core/cache/cache_data.dart';
import 'package:flutter/material.dart';
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
  runApp(const MyApp());
}
