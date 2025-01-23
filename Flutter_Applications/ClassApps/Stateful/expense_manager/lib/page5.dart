import 'package:expense_manager/page6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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
                  onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Page6()));
                  },
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
                  "Graphs",
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

          //graph row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              children: [
                SvgPicture.asset("assets/svg/graph.svg"),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //food
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(214, 3, 3, 0.7)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    //fuel
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(0, 148, 255, 0.7)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Fuel",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //Medicine
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(0, 174, 91, 0.7)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Medicine",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //Entertainment
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(100, 62, 255, 0.7)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Entertainment",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    //shopping
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(241, 38, 197, 0.7)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Shopping",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ), //graph row end
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Divider(),
          ),

          ListView.builder(
            padding: const EdgeInsets.only(top: 20),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  
                  children: [
                    Row(
                      
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(214, 3, 3, 0.7)),
                            child: Center(
                                child:
                                    SvgPicture.asset("assets/svg/food.svg"))),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Text(
                          "₹ 650.00",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            },
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Divider(),
          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  "₹ 2,550.00",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
