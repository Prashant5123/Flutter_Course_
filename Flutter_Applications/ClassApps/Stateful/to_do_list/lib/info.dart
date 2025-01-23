import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color.dart';


class Info extends StatefulWidget{
  const Info({super.key});
  @override
  State createState()=>_InfoState(); 
}

class _InfoState extends State{
  TextEditingController nameController=TextEditingController();
  TextEditingController companyController=TextEditingController();

  String? name;
  String? company;

  List<Map> infoList=[];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Info"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: TextField(
                controller: companyController,
                decoration: const InputDecoration(
                  hintText: "Dream Company",
                  border: OutlineInputBorder()
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                name=nameController.text.trim();
                company=companyController.text.trim();

                if(name!="" && company!=""){
                  infoList.addAll({{"name":"$name","company":"$company"}});
                  

                  nameController.clear();
                  companyController.clear();
                  setState(() {
                    
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Text("Submit",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
            ),


            Expanded(
              child: ListView.builder(
                itemCount: infoList.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return  Column(
                    
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width-50,
                        margin: const EdgeInsets.only(top: 20,),
                        decoration: BoxDecoration(
                          color: colorPicker().setColor[index%4],
                        ),
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name:${infoList[index]["name"]}"),
              
                            Text("Dream Company:${infoList[index]["company"]}"),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
