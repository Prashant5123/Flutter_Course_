import 'package:flutter/material.dart';

class ProblemStatement1 extends StatelessWidget {
  const ProblemStatement1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text("Hello")),
          ),
        ),
      ),
    );
  }
}