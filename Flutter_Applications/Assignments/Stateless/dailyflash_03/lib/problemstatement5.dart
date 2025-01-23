import 'dart:ffi';

import 'package:flutter/material.dart';


class ProblemStatement5 extends StatelessWidget {
  const ProblemStatement5({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Container(
                
                    height: 200,
                    width: 200,
                    decoration:const  BoxDecoration(
                      
                      shape: BoxShape.circle  ,
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.green,
                          Colors.black,
                          Colors.amber
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [
                          0.25,
                          0.25,
                          0.50,
                          0.50,
                          0.75,
                          0.75,
                          1,
                          1

                        ]                      ),
                      
                    
                    ),
                ),
            ),
        ),
    );
  }
}