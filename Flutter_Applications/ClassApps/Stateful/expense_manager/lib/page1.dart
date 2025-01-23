import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment:Alignment.center,
            child:Container(
              width: 144,
              height: 144,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(234, 238, 235, 1),
              ),
              child: Center(
                child: SvgPicture.asset("assets/svg/wallet.svg"),
              ),
            ),

          ),


           Positioned(
            top: MediaQuery.of(context).size.height /2+300, 
            left: 0,
            right: 0,
            child: Text(
              "Expense Manager",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            )
        ],
      )

    );
  }
}