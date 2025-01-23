import 'package:flutter/material.dart';


class ProblemStatement4 extends StatelessWidget {
  const ProblemStatement4({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Container(
                    height: 200,
                    width: 300,
                    decoration:const  BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color:Colors.grey,
                        offset: Offset(0,-5),
                        blurRadius: 5

                        ),
                      ]
                      
                    ),
                ),
            ),
        ),
    );
  }
}