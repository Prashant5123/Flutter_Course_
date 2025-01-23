import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Why do you want to travel?",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
                fontWeight: FontWeight.w300),
          ),
          backgroundColor:Color.fromARGB(255, 9, 32, 86),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: 50,
                              child: const TextField(
                                style: TextStyle(
                                    color: Color.fromARGB(1, 52, 111, 249),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w200),
                                decoration: InputDecoration(
                                    hintText: "Select Destination",
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30.0)),
                                    )),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.blue),
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
              
                    const Text(
                      "Best Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Sorted by lower price",
                          style: TextStyle(
                              color: Color.fromARGB(255, 107, 95, 95),
                              fontSize: 12,
                              fontWeight: FontWeight.w200),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          size: 12,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //First Card
                          Card(
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 213, 212, 212),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("EL CARIO"),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 185, 169, 29),
                                            ),
                                            Text(
                                              "4.6",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 197, 179, 20)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "Egypt",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
              
                                    //Image(image:NetworkImage(url))
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "More",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.blue),
                                          child: const Center(
                                            child: Text(
                                              " 200",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
              
                          //second Card
                          Card(
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 213, 212, 212),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("London"),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 185, 169, 29),
                                            ),
                                            Text(
                                              "4.6",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 197, 179, 20)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "England",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
              
                                    //Image(image:NetworkImage(url))
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "More",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.blue),
                                          child: const Center(
                                            child: Text(
                                              " 200",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
              
                          //Third Card
              
                          Card(
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 213, 212, 212),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("EL CARIO"),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 185, 169, 29),
                                            ),
                                            Text(
                                              "4.6",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 197, 179, 20)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "Egypt",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),

                                    
                                  SvgPicture.asset("assets/img.svg"),
                           
              
                                    //images

                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "More",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.blue),
                                          child: const Center(
                                            child: Text(
                                              " 200",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Popular Destination",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Sorted by Higher rating",
                          style: TextStyle(
                              color: Color.fromARGB(255, 107, 95, 95),
                              fontSize: 12,
                              fontWeight: FontWeight.w200),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          size: 12,
                        )
                      ],
                    ),
              
                    SizedBox(
                      height: 10,
                    ),
                    //second Row for popular destination
              
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //First Card
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 213, 212, 212),
                                      borderRadius: BorderRadius.circular(10)),
                                      
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Cancum",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                 SizedBox(width: 70,),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Color.fromARGB(255, 218, 198, 24),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 200, 183, 28),
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  
                                ],
                              ),

                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mexico",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey
                                    ),
                                  ),
                                 SizedBox(width: 60,),
                                  Text(
                                    "848 Reviews",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey
                                    ),
                                  ),
                              
                            ],

                            
                          ),
                        ],
                      ),

                      Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 213, 212, 212),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Cancum",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                 SizedBox(width: 70,),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Color.fromARGB(255, 218, 198, 24),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 200, 183, 28),
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  
                                ],
                              ),

                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mexico",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey
                                    ),
                                  ),
                                 SizedBox(width: 60,),
                                  Text(
                                    "848 Reviews",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey
                                    ),
                                  ),
                              
                            ],

                            
                          ),
                        ],
                      ),

                      //third card
                      Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 213, 212, 212),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Cancum",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                 SizedBox(width: 70,),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Color.fromARGB(255, 218, 198, 24),
                                      ),
                                      Text(
                                        "4.6",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 200, 183, 28),
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  
                                ],
                              ),

                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mexico",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey
                                    ),
                                  ),
                                 SizedBox(width: 60,),
                                  Text(
                                    "848 Reviews",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey
                                    ),
                                  ),
                              
                            ],

                            
                          ),
                        ],
                      ),
                        ]
                    ),
                    )
                  ]
                  ),

            )));
  }
}
