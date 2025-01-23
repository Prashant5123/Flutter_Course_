import 'dart:collection';

import 'package:flutter/material.dart';


void main() {
  runApp(const Linkedin());
}

class Linkedin extends StatefulWidget{
  const Linkedin({super.key});
  @override
  State createState()=>_LinkedinState();
}

class  _LinkedinState extends State{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        
          title: const Text("Hello, \nPrashant",
            style: TextStyle(
              fontSize: 25
            ),
          ),

          actions: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15))
              ),
              child: const Icon(Icons.qr_code_scanner,
                color: Color.fromARGB(255, 3, 92, 194),
              ),
            )
          ],
          ),

          body: Column(
            children: [
              const Text("You must know th code till the core...",
                style: TextStyle(
                  fontSize: 18
                ),
              ),

              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder:(context,index0){
                  return  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: Row(
                          children: [
                            Text("My Courses",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                                      
                            Spacer(),
                                      
                            Text("See all",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
              
                      Container(
                        
                        height:200,
                        child: ListView.builder(
                          padding: const EdgeInsets.only(left: 15),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder:(context,index2){
                            return Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow:[BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1, // How much the shadow will spread
                                      blurRadius: 10, // How soft the shadow will be
                                      offset: const Offset(0, 3),
                                  )] ,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:140,
                                      width: 245,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        borderRadius:BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                                      ),
                                      child: Image.asset("assets/jpeg/java.jpeg",
                                        fit: BoxFit.cover,
                                      )
                                    ),
                        
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text("JAVA 2024",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 4,
                                          
                                        ),
                                      ),
                                    ),
                        
                                    Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      height: 5,
                                      width:220 ,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 100),
                                        height: 5,
                                        width:50 ,
                                        decoration: const BoxDecoration(
                                        color: Colors.amber,
                                        
                                      ),
                                      ),
                        
                                    ),
                        
                        
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text("47% Completed",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 99, 97, 97),
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
              
                              const SizedBox(
                                width: 25,
                              )
                        
                             
                              
                        
                              
                            ],
                          );
                          }
                        ),
                      ),


                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                        child: Row(
                        
                          children: [
                            Text("Online Courses",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Spacer(),
                            Text("See all",
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 92, 194),
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
              )
            ],
          ),
        
      ),
    );
  }
}


