import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override  
  State createState()=>_MyAppState();
}

class _MyAppState extends State{
  TextEditingController nameController=TextEditingController();
  String? myName;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body:  Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(
                  fontSize: 25
                ),
                obscureText: true,
                controller: nameController,
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Name",
                  
                  suffixIcon: Icon(Icons.visibility),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 25
                  )
                ),

                onChanged: (String value){
                  print("Value:$value");
                  
                  },

                  onEditingComplete: () {
                    print("Editing completed");
                  },

                  onSubmitted: (value) {
                    print("Value Submitted:$value");
                  },


              ),
            ),

            const SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () {
                myName=nameController.text;
                nameController.clear();
                setState(() {});
                print("hiiiii");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("Add Data",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

             const SizedBox(
              height: 30,
            ),

            Text("Name: $myName"),

          ],
          ),
      ),
    );
  }
}