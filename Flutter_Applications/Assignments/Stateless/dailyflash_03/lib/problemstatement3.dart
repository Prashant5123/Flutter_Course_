import 'package:flutter/material.dart';

class ProblemStatement3 extends StatefulWidget {
  const ProblemStatement3({super.key});

  @override
  State<ProblemStatement3> createState() => _ProblemStatement3State();
}

class _ProblemStatement3State extends State<ProblemStatement3> {
    bool toggle=true;

    Color toggleColor(){
    if(toggle){
        
        return Colors.red;
    }else{
        
        return Colors.green;
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
                        color: const Color.fromARGB(255, 235, 230, 230),
                          border: Border.all(color:toggleColor(),width: 2)
                      ),
                  ),
                ),
            ),
        ),
    );
  }
}