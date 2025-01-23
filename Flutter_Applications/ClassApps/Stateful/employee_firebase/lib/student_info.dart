import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_firebase/login.dart';
import 'package:employee_firebase/session_data.dart';
import 'package:employee_firebase/show_student_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';



class StudentInfo extends StatefulWidget {
  const StudentInfo({super.key});

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  TextEditingController nameController=TextEditingController();
  TextEditingController courseController=TextEditingController();
  TextEditingController collegeController=TextEditingController();

  Map course={};
  bool isOffline=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StudentInfo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions:[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: ()async{
                SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
                sharedPreferences.setBool("loginSession", false);
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Icon(Icons.logout,color: Colors.black,)
              
            ),
          )
          ],
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(),
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              TextField(
                controller: collegeController,
                decoration: const InputDecoration(
                  hintText: "Enter College Name",
                  border: OutlineInputBorder(),
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              Text("Enrolled Corse:$course"),
        
              const SizedBox(
                height: 20,
              ),
        
              TextField(
                controller: courseController,
                decoration: const InputDecoration(
                  hintText: "Enter Course Name",
                  border: OutlineInputBorder(),
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(isOffline?Colors.blue:Colors.white)),
                    onPressed:(){
                      isOffline=true;
                      setState(() {
                        
                      });
                    }, 
                    child: const Text("Offline",
                      style: TextStyle(color: Colors.black),
                    )
                  ),
        
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(isOffline==false?Colors.blue:Colors.white)),
                    onPressed:(){
                      isOffline=false;
                      setState(() {
                        
                      });
                    }, 
                    child: const Text("Online",
                      style: TextStyle(color: Colors.black),
                    )
                  )
                ],
              ),
        
        
              const SizedBox(
                height: 20,
              ),
        
              Center(
                child: ElevatedButton(
                      //style: ButtonStyle(backgroundColor: WidgetStatePropertyAll()),
                      onPressed:(){
                       String mode="";
                       if(isOffline){
                        mode="Offline";
                       }else{
                        mode="Online";
                       }  
        
                       if(courseController.text.trim().isNotEmpty){
                        course[courseController.text]=mode;
                        courseController.clear();
                        isOffline=true;
                       }
                        setState(() {
                          
                        });
                      }, 
                      child: const Text("Add Course",
                        style: TextStyle(color: Colors.black),
                      )
                    ),
              ),
        
        
              const SizedBox(
                height: 20,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                   
                    onPressed:()async{
                      Map<String,dynamic> data={
                        "name":nameController.text,
                        "college":collegeController.text,
                        "courses":course
                      };
                      if(nameController.text.trim().isNotEmpty && collegeController.text.trim().isNotEmpty && course.isNotEmpty){
                        FirebaseFirestore.instance.collection("StudentInfo").add(data);

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Data added successfully!!!")));

                        nameController.clear();
                        collegeController.clear();
                        course={};
                      }
                      setState(() {
                        
                      });
                    }, 
                    child: const Text("Add Data",
                      style: TextStyle(color: Colors.black),
                    )
                  ),
        
                  ElevatedButton(
                   
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const ShowData()));
                      setState(() {
                        
                      });
                    }, 
                    child: const Text("Get Data",
                      style: TextStyle(color: Colors.black),
                    )
                  )
                ],
              ),
        
        
        
            ],
          ),
        ),
      ),
    );


  }
}