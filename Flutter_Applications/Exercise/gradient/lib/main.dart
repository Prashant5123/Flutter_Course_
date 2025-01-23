import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gradient Demo"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),


        body:Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                
                
                
                colors: [
                  Colors.blue,
                  Colors.red,
                ]
              )
            ),
          ),
        ), 
      ),
    );
  }
}
