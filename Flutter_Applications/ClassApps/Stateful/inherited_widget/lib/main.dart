import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget/Model/details.dart';
import 'package:inherited_widget/View/sign_up.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey:"AIzaSyC81HnJHO7Z6FtXNxms71FX-XiV3Ety4Sg", appId: "1:112772978847:android:306c68118a2510d3c2aaaa", messagingSenderId: "112772978847", projectId: "employeeinfo-d6e37")
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const  MyApp({super.key});

  final String email="";
  final String password="";

  @override
  Widget build(BuildContext context) {
    return Details(
      email: email, 
      password: password, 
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUp(),
      )
    );
  }
}







