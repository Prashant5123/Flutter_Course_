import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ipl_team/home.dart';
import 'package:ipl_team/teams.dart';

class Players extends StatefulWidget {
  String team;
   Players( {super.key,required this.team});

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Players"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 238, 51, 51),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount:playerData[widget.team].length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SlidableAutoCloseBehavior(
                child: Slidable(
                   endActionPane:  ActionPane(
                          extentRatio: 0.1,
                          motion: ScrollMotion(), 
                          children:[
                            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.edit),
                  GestureDetector(
                    onTap: (){
                      FirebaseFirestore.instance.collection("IplTeams").doc().delete();
                    },
                    child: Icon(Icons.delete)
                  )
                ],
                            )
                            ]
                        ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: teamColor[widget.team],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                       
                        children: [
                          Container(
                            height:100,
                            width: 100,
                          
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle
                            ),
                                    
                            child: Image.network("${playerData[widget.team][index]["url"]}",fit: BoxFit.cover,),),
                          
                          const SizedBox(
                            width: 10,
                          ),
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Player Name: ${playerData[widget.team][index]["name"]}"),
                      
                               Text("Jersey No: ${playerData[widget.team][index]["jerNum"]}"),
                      
                                Text("Team: ${playerData[widget.team][index]["team"]}"),
                      
                            ],
                          )
                        ],
                      ),
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