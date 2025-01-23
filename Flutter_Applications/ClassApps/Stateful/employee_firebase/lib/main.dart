import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:employee_firebase/next_screen.dart';
import 'package:employee_firebase/session_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await SessionData.getSessionData();
  
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC81HnJHO7Z6FtXNxms71FX-XiV3Ety4Sg",
          appId: "1:112772978847:android:306c68118a2510d3c2aaaa",
          messagingSenderId: "112772978847",
          projectId: "employeeinfo-d6e37"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     // home: SplashScreenSimple(),
      home: AnimatedSplashScreen(
        splash:Image.asset("assets/png/LOGO.png") , 
        duration: 3000,
        backgroundColor: Colors.blue[100]!,
        nextScreen:  nextScreen(context),

        ),
    );
  }
}

