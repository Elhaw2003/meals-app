import 'package:shared_preferences/shared_preferences.dart';

class OnboardingServices{
  static late SharedPreferences prefs ;
  static Future initializeSharedPreferenceStorage ()async{
    prefs =  await SharedPreferences.getInstance();
  }
  static setFirstTimeWithFalse (){
   prefs.setBool('isFirstTime', false);
  }
  static  isFirstTime(){
    bool isFirstTime = prefs.getBool('isFirstTime')?? true;
    return isFirstTime;
  }
}