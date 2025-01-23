import 'package:flutter/material.dart';

class ProblemStatement3 extends StatelessWidget {
  const ProblemStatement3({super.key});

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
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))
            ),
            child: Center(child: Text("Hello")),
          ),
        ),
      ),
    );
  }
}