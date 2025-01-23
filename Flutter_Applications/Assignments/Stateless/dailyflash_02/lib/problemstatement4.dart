import 'package:flutter/material.dart';

class ProblemStatement4 extends StatelessWidget {
  const ProblemStatement4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: Container(
            height: 200,
            width: 300,
          
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 242, 128, 124),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Prashant"),
            ),
          ),
        ),
      ),
    );
  }
}