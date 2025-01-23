import 'package:flutter/material.dart';


class Screen3 extends StatelessWidget{
  const Screen3({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Recomended",
            style: TextStyle(
              color: Color.fromARGB(255, 13, 84, 142),
              fontSize: 26,
              fontWeight: FontWeight.w700,


            ),
          ),
          centerTitle: true,
          shape:const  Border(bottom: BorderSide()),
          leading:const  Icon(Icons.arrow_back_ios_new_outlined),
          
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left:20,top: 15,bottom: 5),
                child: const Text("Start a new carrer",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 13, 84, 142),)),
                        onPressed: (){
                  
                        }, 
                        child:const Text("Data Science",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 16
                        ),
                        ),
                      ),
                          
                      const SizedBox(
                        width: 10,
                      ),
                  
                      ElevatedButton(
                        style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 13, 84, 142),)),
                        onPressed: (){
                  
                        }, 
                        child:const Text("Machine Learning",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 16
                        ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style:const  ButtonStyle(backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 13, 84, 142),)),
                        onPressed: (){
                  
                        }, 
                        child:const Text("Apache Spark",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 16
                        ),
                        ),
                      ),
                          
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15), 
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 224, 221, 221),
                    
                    borderRadius: BorderRadius.circular(20),
                  ),
          
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10,top:15,bottom: 15), 
                        height: 120,
                        width: 120,
          
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/recomended.jpg"),
                      ),
          
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10), 
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Data Science",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                        
                              const Text("Harvard University",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 154, 149, 149),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
                        
                              const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                              
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
          
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Data Science",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
          
                                  const SizedBox(
                                    width: 10,
                                  ),
          
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Machines Learning",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
          
               Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 224, 221, 221),
                    
                    borderRadius: BorderRadius.circular(20),
                  ),
          
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10,top:15,bottom: 15), 
                        height: 120,
                        width: 120,
          
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/recomended.jpg"),
                      ),
          
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10), 
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("AI & ML",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                        
                              const Text("Harvard University",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 154, 149, 149),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
                        
                              const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                              
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
          
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Machines Learning",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
          
                                  const SizedBox(
                                    width: 10,
                                  ),
          
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Decision Tree",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 224, 221, 221),
                    
                    borderRadius: BorderRadius.circular(20),
                  ),
          
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10,top:15,bottom: 15), 
                        height: 120,
                        width: 120,
          
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/recomended.jpg"),
                      ),
          
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10), 
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Big Data",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                        
                              const Text("Harvard University",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 154, 149, 149),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
                        
                              const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                              
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
          
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Big Data",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
          
                                  const SizedBox(
                                    width: 10,
                                  ),
          
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Apache Spark",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 224, 221, 221),
                    
                    borderRadius: BorderRadius.circular(20),
                  ),
          
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10,top:15,bottom: 15), 
                        height: 120,
                        width: 120,
          
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/recomended.jpg"),
                      ),
          
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10), 
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Devops",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                        
                              const Text("Harvard University",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 154, 149, 149),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
                        
                              const Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                              
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),
                              ),
          
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Docker",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
          
                                  const SizedBox(
                                    width: 10,
                                  ),
          
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 196, 212, 225),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("Kubernetes",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 13, 84, 142),
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
            
            
            
            ],
          ),
        ),
      ),
    );
  }
}