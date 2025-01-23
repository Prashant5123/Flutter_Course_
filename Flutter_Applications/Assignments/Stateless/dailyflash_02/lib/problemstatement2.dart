import 'package:flutter/material.dart';

class ProblemStatement2 extends StatelessWidget {
  const ProblemStatement2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Padding(

          padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 350),
          child: Container(
            height: 100,
            width: 100,
          
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border(left: BorderSide(width: 5,color: Colors.black))
            ),
            child: Center(child: Text("Hello")),
          ),
        ),
      ),
    );
  }
}