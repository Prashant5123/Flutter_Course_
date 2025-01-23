import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProblemStatement5 extends StatefulWidget {
  const ProblemStatement5({super.key});

  @override
  State<ProblemStatement5> createState() => _ProblemStatement5State();
}


class _ProblemStatement5State extends State<ProblemStatement5> {
  bool toggle=false;
  Color changeColor(){
    if(toggle){
      return Colors.blue;
    }else{
      return Colors.red;
    }
  }

  String changeText(){
    if(toggle){
      return "Container Tapped";
    }else{
      return "Click Me!";
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: (){
              if(toggle){
                toggle=false;
              }else{
                toggle=true;
              }
              setState(() {
                
              });

            },
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: changeColor(),
              ),
              child: Center(child: Text(changeText(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}