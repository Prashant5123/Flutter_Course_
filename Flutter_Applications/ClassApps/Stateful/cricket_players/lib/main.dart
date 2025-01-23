import 'package:flutter/material.dart';

void main(){
  runApp(const CricketPlayer());
}

class CricketPlayer extends StatefulWidget{
  const CricketPlayer({super.key});

  @override
  State createState()=> _CricketPlayerState();
} 

class _CricketPlayerState extends State{
  List player=[
    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/1/1e/Prime_Minister_Of_Bharat_Shri_Narendra_Damodardas_Modi_with_Shri_Rohit_Gurunath_Sharma_%28Cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Virat_Kohli_in_PMO_New_Delhi.jpg/220px-Virat_Kohli_in_PMO_New_Delhi.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202401/kl-rahul-123711834-3x4.jpg?VersionId=gu4OAKAWlQ9YZW4EJtMy.qxlXe0i0bfh",
    "https://static.india.com/imageTopics/95ca27b84de3713cc9468be4ca872048.jpg"
  ];

  List playerName=[
    "MS Dhoni",
    "Rohit Sharma",
    "Virat Kohli",
    "KL Rahul",
    "Sachin Tendulkar"
  ];

  int index=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cricket Player"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height:300,
                width: 300,
                child: Image.network(player[index]),
              ),

              Text(playerName[index],
                style:const TextStyle(fontSize: 17),
              ),
            ],
          ),

          
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(index<player.length-1){
              index++;
            }else{
              index=0;
            }

            setState(() {
              
            });
          },

          child: const Text("Change"),
        ),
      ),
    );
  }
}