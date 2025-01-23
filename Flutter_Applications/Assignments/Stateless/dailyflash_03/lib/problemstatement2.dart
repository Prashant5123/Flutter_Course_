import 'package:flutter/material.dart';


class ProblemStatement2 extends StatelessWidget {
  const ProblemStatement2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
            
            height: 200,
            width: 300,
            child: Stack(
              children:[ 
              Image.network("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm00NTItZi0wMTQteC5qcGc.jpg",),
              const Center(child: Text("Core2Web",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                )
              ))
              ]
              
            ),

          ),
        ),
      ),
    );
  }
}