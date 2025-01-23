import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:players_info/view/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const  FirebaseOptions(apiKey: "AIzaSyAhq31rUpToEj6gGxJU8jrLNmY-TBxvUMM", appId: "1:766832131820:android:9b8c11a7c65ab924ee6fc9", messagingSenderId: "766832131820", projectId: "playersinfo-b6de9")
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(), 
    );
  }
}
