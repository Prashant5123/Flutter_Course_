import 'package:expense_manager/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget{
  const Page3({super.key});

  @override
  State createState()=>_Page3State();
}

class _Page3State extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(
                height: 86,
              ),
              Center(
                child: SizedBox(
                  
                  child: Center(
                    child: SvgPicture.asset("assets/svg/wallet.svg"),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Create your Account",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),


              //Name container & textfield
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(),
                      border: InputBorder.none,
                      hintText: "Name",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(left: 20)),
                ),
              ),

              const SizedBox(
              height: 30,
            ),


            //username container & textfield
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(),
                      border: InputBorder.none,
                      hintText: "Username",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(left: 20)),
                ),
              ),

              const SizedBox(
              height: 30,
            ),

            //Password container & textfield
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(),
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(left: 20)),
                ),
              ),

              const SizedBox(
              height: 30,
            ),

          //confirm password container & textfield
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(),
                      border: InputBorder.none,
                      hintText: "Confirm Password",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(left: 20)),
                ),
              ),

              const SizedBox(
              height: 30,
            ),

            //Sign up button
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Page2()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(14, 161, 125, 1)),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}