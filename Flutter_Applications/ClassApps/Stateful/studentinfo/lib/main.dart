import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './screen_ui.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyDEnEdNdnBtmGedgVr0EoAy7OSb4b3cVQ4", appId: "1:405334474154:android:7cbfb86a3417866486bfd3", messagingSenderId: "405334474154", projectId: "studentinfo-eee73")
  );
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentInfo(),
    );
  }
}

