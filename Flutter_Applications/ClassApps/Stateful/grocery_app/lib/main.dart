
import 'package:flutter/material.dart';
import 'package:grocery_app/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:LoginScreen()
    );
  }
}
