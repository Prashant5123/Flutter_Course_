//5.In the screen, show 3 network images vertically of size (width: 150, height: 150).

import 'package:flutter/material.dart';
class ProblemStatement5 extends StatelessWidget{
  const ProblemStatement5({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Car"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),

        body:  Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://i.pinimg.com/736x/d2/6d/2a/d26d2aab2ff63cb48b3a91b0e8e0aa55.jpg")
              ),

            
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://forumstatic.oneplusmobile.com/opforum-gl/upload/image/app/thread/20231112/4318020878898572541/1462181600090390536/1462181600090390536.jpeg")
              ),

              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://carconfigurator.ferrari.com/rt-assets/data/cars/sf90stradale/ui/splashpage.jpg")
              ),

            ],
          ),
        ),
      ),
    );
  }
}