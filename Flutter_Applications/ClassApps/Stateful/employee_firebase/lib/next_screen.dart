import 'package:employee_firebase/login.dart';
import 'package:employee_firebase/session_data.dart';
import 'package:employee_firebase/student_info.dart';
import 'package:flutter/material.dart';


  


  
  Widget nextScreen(BuildContext context){
  
  if(SessionData.isLogin!=null){
    if(SessionData.isLogin==true){
      return const StudentInfo();
    }else{
      return const LoginScreen();
    }
  }else{
    return const LoginScreen();
  }
}
  
   
 