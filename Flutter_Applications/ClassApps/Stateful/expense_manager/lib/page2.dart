import 'dart:ui';

import 'package:expense_manager/page1.dart';
import 'package:expense_manager/page3.dart';
import 'package:expense_manager/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
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
              "Login to your Account",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
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
                    disabledBorder: const OutlineInputBorder(),
                    border: InputBorder.none,
                    hintText: "Username",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w500),
                    contentPadding: const EdgeInsets.only(left: 20)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    const BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        blurRadius: 10)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Passwaord",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w500),
                    contentPadding: const EdgeInsets.only(left: 20)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //Sign in 
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>const Page4() ,));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(14, 161, 125, 1)),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),

            const Spacer(),
            Padding(
              padding:  const EdgeInsets.only(bottom: 60),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
              
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () =>  Navigator.push(context,MaterialPageRoute(builder:(context) =>const Page3() ,)),
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(14, 161, 125, 1)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
