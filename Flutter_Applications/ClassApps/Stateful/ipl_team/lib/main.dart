import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";

import "package:ipl_team/login.dart";

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(apiKey: "AIzaSyCgsEQaUGIRfMlQ9tk4Nq3f3dUZEbB4q_Q", appId: "1:17235927142:android:71d2e8718fd3f656650da7", messagingSenderId: "17235927142", projectId: "ipl-team-5c68a",storageBucket: "ipl-team-5c68a.firebasestorage.app")
    
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}