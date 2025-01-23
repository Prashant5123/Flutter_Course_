// Create a screen with a deep purple app bar titled "Hello Core2web" and in the
// centre of the body create a blue container with (width: 360, height: 200).
import 'package:flutter/material.dart';


class ProblemStatement3 extends StatelessWidget{
  const ProblemStatement3({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),

        body:  Center(
          child:Container(
            width: 360,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}