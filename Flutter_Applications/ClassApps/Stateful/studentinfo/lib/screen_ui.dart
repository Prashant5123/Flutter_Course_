import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import './student_model.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({super.key});
  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  TextEditingController nameController=TextEditingController();
  TextEditingController rollNoController=TextEditingController();

  List<StudentModel> studentList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Info"),
        backgroundColor: Color.fromARGB(255, 235, 218, 166),
        centerTitle: true,
      ),

      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder()
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: rollNoController,
              decoration: const InputDecoration(
                hintText: "Enter Roll No",
                border: OutlineInputBorder()
              ),
            ),
          ),
          

          //Add data button
          GestureDetector(
            onTap: (){
             
              if(nameController.text.trim().isNotEmpty && rollNoController.text.trim().isNotEmpty ){
                FirebaseFirestore.instance.collection("studentData").add({
                  "name":nameController.text,
                  "rollNo":rollNoController.text
                });
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Data Added")));
                nameController.clear();
                rollNoController.clear();
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Invalid Data")));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 233, 199, 199),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Text("Add Data",
                  style: TextStyle(
                    fontSize: 18,
                   
                  ),
                ),
              ),
            ),
          ),
            const SizedBox(
              height: 10,
            ),
          //Get data button
          GestureDetector(
            onTap: ()async{
              studentList.clear();
              QuerySnapshot response= await FirebaseFirestore.instance.collection("studentData").get();
              for(var value in response.docs){
                studentList.add(
                  StudentModel(name: value["name"], rollNo:value["rollNo"], id: value.id)
                );
              }
              setState(() {
                
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 199, 199),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Text("Get Data",
                  style: TextStyle(
                    fontSize: 18,
                    
                  ),
                ),
              ),
            ),
          ),


          //listview builder

          Expanded(
            child: SlidableAutoCloseBehavior(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: studentList.length,
                itemBuilder: (context, index){
                  return Slidable(
                    key: ValueKey(studentList[index].id),
                    endActionPane: ActionPane(
                      extentRatio: 0.20,
                      motion: ScrollMotion(), 
                      children:[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                               
                              },
                              child: Icon(Icons.edit_outlined)
                              ),
                  
                            GestureDetector(
                              onTap: (){
                  
                                FirebaseFirestore.instance.collection("studentData").doc(studentList[index].id).delete(); 
                              
                                studentList.removeAt(index);
                                setState(() {
                                  
                                });
                              },
                            child: Icon(Icons.delete_outlined)
                            )
                          ],
                        )
                        ]),
                    child: Container(
                      width: MediaQuery.of(context).size.width-20,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 199, 199),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Student Name: ${studentList[index].name}",
                              style: TextStyle(
                                fontSize: 16,
                                //fontWeight: FontWeight.w600
                              ),
                            ),
                        
                            Text("Roll No: ${studentList[index].rollNo}",
                              style: TextStyle(
                                fontSize: 16,
                                //fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}