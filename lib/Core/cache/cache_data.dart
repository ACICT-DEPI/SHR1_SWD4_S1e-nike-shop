import 'package:shared_preferences/shared_preferences.dart';

class CacheData{
  static late SharedPreferences onBoardingCheck;
  static bool? check;
  static Future<void> cacheInit() async {
    onBoardingCheck= await SharedPreferences.getInstance();
  }
  static setOnBoardingCheckData({required String key,required bool value}) async {
    await onBoardingCheck.setBool(key, value);
  }
  static bool? getOnBoardingCheckData({required String key}){
    check=onBoardingCheck.getBool(key);
    return onBoardingCheck.getBool(key);
  }
}