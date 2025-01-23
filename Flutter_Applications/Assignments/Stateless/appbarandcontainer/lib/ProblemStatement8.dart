import "package:flutter/material.dart";

class Problemstatement8 extends StatelessWidget{

  const Problemstatement8({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
          ),
        ),
      ),
    ),
   );
  }
}