

import 'dart:ui';

import 'package:expense_manager/page5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  TextEditingController dateController=TextEditingController();
   showMyBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder: (context){
      
      return  Padding(
        padding:  EdgeInsets.only(left: 22,right: 22,top: 30,bottom:MediaQuery.of(context).viewInsets.bottom ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [

            //text
            Text("Date",
              style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
            ),
            const SizedBox(
              height: 10,
            ),

            //date textfield
            SizedBox(
              height: 36,
              child: TextField(
                controller: dateController,
                style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                 onTap: ()async {
                  DateTime? date=await showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime(2030));
                  String formatedDate=DateFormat.yMMMd().format(date!);
                  dateController.text=formatedDate;
                  setState(() {
                    
                  });
                },
                decoration: InputDecoration(
                  hintText: "01-11-2024",
                  contentPadding: EdgeInsets.only(left: 20),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                    )
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                  )
                  )
                ),
              ),
            ),

            const SizedBox(height: 20,),

             //amount
            Text("Amount",
              style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
            ),
            const SizedBox(
              height: 10,
            ),

            //amount textfield
            SizedBox(
              height: 36,
              child: TextField(
                style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                decoration: InputDecoration(
                  hintText: "900",
                   contentPadding: EdgeInsets.only(left: 20),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                    )
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                  )
                  )
                ),
              ),
            ),

            const SizedBox(height: 20,),

             //category
            Text("Category",
              style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
            ),
            const SizedBox(
              height: 10,
            ),

            //date textfield
            SizedBox(
              height: 36,
              child: TextField(
                style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                decoration: InputDecoration(
                  hintText: "Shopping",
                   contentPadding: EdgeInsets.only(left: 20),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                    )
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                  )
                  )
                ),
              ),
            ),

            const SizedBox(height: 20,),

             //descripotion
            Text("Description",
              style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
            ),
            const SizedBox(
              height: 10,
            ),

            //description textfield
            SizedBox(
              height: 36,
              child: TextField(
                style:  GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                maxLines: null,
            
                decoration: InputDecoration(
                  
                  hintText: "Lorem Ipsum is simply dummy text of the ",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight:FontWeight.w400,
                    color: Colors.black
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                    )
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Color.fromRGBO(191, 189, 189, 1),
                      width: 1
                  )
                  )
                ),
              ),
            ),

            const SizedBox(height: 20,),


            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  
                },
                child: Container(
                  height: 40,
                  width: 123,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(14, 161, 125, 1),
                    borderRadius: BorderRadius.circular(67),
                  ),
                
                  child: Center(
                    child: Text("Add",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),


             const SizedBox(height: 30,),
          ],
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Page5()));
                  },
                  child:  Image.asset("assets/png/Menu.jpg",
              fit: BoxFit.cover,
               height: 30,
               width: 30,
              ),
                ),
                  
                const SizedBox(
                  width: 30,
                ),
                Text("November 2024",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
                  
              
                const SizedBox(
                  width: 5,
                ),
                  SvgPicture.asset("assets/svg/dropdown.svg")
              ],
            ),
          ),
      
         
      
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder:(context,index){
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Image.asset("assets/png/medicine.png"),
                      
                      
                          const SizedBox(
                            width: 20,
                          ),
                                  
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Medicine",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                     const Spacer(),
                                    SvgPicture.asset("assets/svg/Subtract.svg"),
                      
                                    const SizedBox(width: 10,),
                                        
                                    Text("500",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                      
                      
                                Text("Lorem Ipsum is simply dummy text of the  ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400
                      
                                  ),
                                ),
                      
                                Row(
                                  children: [
                                    const Spacer(),
                                    Text("3 June | 11:50 AM",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400
                                    
                                      ),
                                    ),
                                  ],
                                ),
                      
                      
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  
                    const Divider()
                  ],
                );
              }
            
            ),
          ),

          // add transaction button
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GestureDetector(
              onTap: (){
                showMyBottomSheet();
              },
              child: Container(
                height: 46,
                width: 166,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(67),
                  boxShadow: [
                    const BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Color.fromRGBO(0, 0, 0, 0.25)
                    )
                  ]
              
                ),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svg/add.svg"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Add Transaction",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      
          
        ],
      ),
    );
  }
}