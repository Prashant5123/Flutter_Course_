import 'package:employee_firebase/login.dart';
import 'package:employee_firebase/session_data.dart';
import 'package:employee_firebase/student_info.dart';
import 'package:flutter/material.dart';

class SplashScreenSimple extends StatefulWidget {
  const SplashScreenSimple({super.key});

  @override
  State<SplashScreenSimple> createState() => _SplashScreenSimpleState();
}

class _SplashScreenSimpleState extends State<SplashScreenSimple> {

  
  void naviagte(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 3
        ),
         ()async{
          await SessionData.getSessionData();

            if(SessionData.isLogin!=null){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const StudentInfo()));
            }else{
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const LoginScreen()));

            }
         }
      );
  }

  @override
  Widget build(BuildContext context) {
    naviagte(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 160, 194, 222),
      ),
      
      body: Container(
        child: Center(
          child: Image.network("https://miro.medium.com/v2/resize:fit:1400/1*UDNyY_8XZWb5AFAar_gAZA.png"),
        ),
      ),
    );
  }
}