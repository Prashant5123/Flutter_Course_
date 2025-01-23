import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "assets/png/Menu.jpg",
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          //food and fuel row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Container(
                    width: 145,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, 2),
                              blurRadius: 8,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ]),
                    child: Column(
                      children: [
            
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(214, 3, 3, 0.7),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg/food.svg",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                    Spacer(),
                    //fuel container
                    Container(
                    width: 145,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, 2),
                              blurRadius: 8,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ]),
                    child: Column(
                      children: [
            
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 148, 255, 0.7),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg/fuel.svg",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Fuel",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ))
              ],
            ),
          ),

            const SizedBox(
                        height: 30,
                      ),

          //medicine and shopping row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Container(
                    width: 145,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, 2),
                              blurRadius: 8,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ]),
                    child: Column(
                      children: [
            
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 174, 91, 0.7),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg/medical.svg",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                    Spacer(),
                    //fuel container
                    Container(
                    width: 145,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, 2),
                              blurRadius: 8,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ]),
                    child: Column(
                      children: [
            
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 148, 255, 0.7),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg/fuel.svg",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Fuel",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
