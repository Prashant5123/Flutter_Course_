
import 'package:shared_preferences/shared_preferences.dart';

class SessionData{
  static bool? isLogin;
  static String? emailId;

  static storesSessionData({required bool loginData, required String emailId})async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();

    sharedPreferences.setBool("loginSession",loginData);
    sharedPreferences.setString("email", emailId);

    getSessionData();
  }

  static getSessionData()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    isLogin=sharedPreferences.getBool("loginSession");
    emailId=sharedPreferences.getString("email");
  }
}

