import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController nameController=TextEditingController();
  List<String> playerList=[];
  String? name;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Player List"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ) ,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 18
                ),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                  )
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: (){
                name=nameController.text.trim();
                if(name!=""){
                  playerList.add(name!);
                  nameController.clear();
                  setState(() {
                    
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(
                   color:Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
               
                child: const Text("Add Data",
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            

            ListView.builder(
              itemCount: playerList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                     Text("Name:${playerList[index]}",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 18
                      ),
                     )
                  ],
                );
              }
            ),
           
          ],
        ),
      ),
    );
  }
}
