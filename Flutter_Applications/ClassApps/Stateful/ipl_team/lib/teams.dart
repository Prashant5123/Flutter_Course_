import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ipl_team/home.dart';
import 'package:ipl_team/players.dart';

 Map<dynamic,dynamic> teamColor={
    "MI":Colors.blue,
    "CSK":Colors.yellow,
    "DC":Colors.blue,
    "KKR":Colors.purple,
    "LSG":Colors.blue,
    "RCB":Colors.red,
    "SRH":Colors.orange

  };

  List teamKeys=playerData.keys.toList();

class Teams extends StatefulWidget {
  const Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {

  Map franchiseUrl={
    "MI":"assets/png/MI.jpg",
    "CSK":"assets/png/CSK.jpg",
    "DC":"assets/png/DC.jpg",
    "KKR":"assets/png/KKR.jpg",
    "LSG":"assets/png/LSG.png",
    "RCB":"assets/png/RCB.jpg",
    "SRH":"assets/png/SRH.jpg"

  };


  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Teams"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 238, 51, 51),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount:playerData.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: (){
                  
                String team=teamKeys[index];
                  
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Players(team: team,)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: teamColor[teamKeys[index]],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                        
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle
                          ),
                                    
                          child: Image.asset("${franchiseUrl[teamKeys[index]]}",fit: BoxFit.cover,),
                        ),
                        Text("${teamKeys[index]}")
                      ],
                    ),
                  ),
                ),
              ),
            );
        }),
      ),
    );
  }
}