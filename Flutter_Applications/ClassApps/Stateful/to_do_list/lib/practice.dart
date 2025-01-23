import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/info.dart';
import 'package:to_do_list/practice.dart';
import 'color.dart';

void main() {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice(),
    );
  }
}

class Practice extends StatefulWidget{
  const Practice({super.key});

  @override
  State createState() => _PracticeState();
}

class _PracticeState extends State{

  void setDate(){
     DatePickerDialog(firstDate: DateTime(2020), lastDate: DateTime(2030));
  }
  void showBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder:(context){
        return Padding(
          padding:  EdgeInsets.only(left: 20,right: 20,top: 20,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create To-Do",
                        style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
            
                Text("Title",
                  style: GoogleFonts.quicksand(
                    color:Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
            
                TextField(
                  
                  decoration:InputDecoration(
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),  
                    ),
            
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),  
                    ),
            
                    border:OutlineInputBorder()
                  )
                ),
            
                SizedBox(
                  height: 15,
                ),
            
            
                Text("Description",
                  style: GoogleFonts.quicksand(
                    color:Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
            
                TextField(
                  maxLines: null,
                  decoration:InputDecoration(
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),  
                    ),
            
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),  
                    ),
            
                    border:OutlineInputBorder()
                  )
                ),
            
                SizedBox(
                  height: 15,
                ),
            
            
            
                Text("Date",
                style: GoogleFonts.quicksand(
                  color:Color.fromRGBO(0, 139, 148, 1),
                  fontSize: 14,
                    fontWeight: FontWeight.w600
                ),
              ),
            
              TextField(
                  
                  decoration:InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        print("hiiii");
                       setDate();
                       setState(() {
                         
                       });
                      },
                      child: Icon(Icons.calendar_month_outlined),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),  
                    ),
            
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),  
                    ),
            
                    border:OutlineInputBorder()
                  )
                ),
              SizedBox(
                  height: 15,
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    
                      child: Center(
                        child: Text("Submit",
                        
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            
                SizedBox(
                  height: 15,
                ),
            
            
            
            
              ],
            ),
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title:  Text("To-do list",
            style:GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.white,  
              ),
            ) 
          ),
          backgroundColor:const Color.fromRGBO(2, 167, 177, 1),
        ),

        body: ListView.builder(
          itemCount: 10,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                   
                    decoration:BoxDecoration(
                      color: colorPicker().setColor[index%4],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child:Container(
                                  child: SvgPicture.asset("assets/svg/gallery.svg"),
                                )
                              ),
                            ),
              
                             Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left:15),
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Lorem Ipsum is simply setting industry.",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
              
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("10 July 2023",
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(132, 132, 132, 1),
                              ),
                            ),
              
                            const Spacer(),
              
                            SvgPicture.asset("assets/svg/edit.svg",
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset("assets/svg/delete.svg",
                              height: 16,
                              width: 16,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } 
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showBottomSheet();
          },
          backgroundColor: Color.fromRGBO(2, 167, 177, 1),

          child: Icon(Icons.add,
            color:Colors.white,
          ),

        ),
    );
  }
}

