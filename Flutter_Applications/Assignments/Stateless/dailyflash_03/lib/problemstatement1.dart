import 'package:flutter/material.dart';


class ProblemStatement1 extends StatelessWidget {
  const ProblemStatement1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.grey,
            child: Center(child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
              height: 200,
              width: 200,
            )),

          ),
        ),
      ),
    );
  }
}