import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";
import 'screen1data.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          centerTitle: true,
          title: Text("Where do you want to travel?",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ))),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      height: 41,
                      width: 280,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 237, 248, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Select Destination",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(52, 111, 249, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/svg/dropdown.svg")
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 41,
                      width: 41,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(52, 111, 249, 1),
                          shape: BoxShape.circle),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Best Deals",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Sorted by lower price",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(127, 130, 134, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 145,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 145,
                      margin: EdgeInsets.only(left: 15,right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromRGBO(233, 237, 248, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "${data().card1data["city"][index]}",
                                  style: GoogleFonts.inter(
                                      fontSize: 12, fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),

                                Spacer(),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Color.fromRGBO(228, 161, 2, 1),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "4.6",
                                  style: GoogleFonts.inter(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "${data().card1data["country"][index]}",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(179, 182, 187, 1),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                child: Center(
                                    child:
                                        SvgPicture.asset("assets/svg/img.svg")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Container(
                                    height: 26,
                                    width: 47,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "More",
                                        style: GoogleFonts.inter(
                                            color:
                                                Color.fromRGBO(52, 111, 249, 1),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 26,
                                    width: 47,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(52, 111, 249, 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "\$${data().card1data["rate"][index]}",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                height: 15,
              ),
            Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Popular Destinations",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Sorted by higher rating",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(127, 130, 134, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 182,
                          
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 145,
                                    height: 145,
                                    margin: EdgeInsets.only(left: 15,right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color.fromRGBO(233, 237, 248, 1),
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                            "assets/svg/img.svg")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cancun",
                                          style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                    
                                        SizedBox(
                                          width: 60,
                                        ),
                                        
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Color.fromRGBO(228, 161, 2, 1),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.6",
                                          style: GoogleFonts.inter(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(228, 161, 2, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${data().card2data["country"][index]}",
                                          style: GoogleFonts.inter(
                                              color:Color.fromRGBO(179, 182, 187, 1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                    
                                        SizedBox(
                                          width: 25,
                                        ),
                                        
                                        
                                        Text(
                                          "${data().card2data["reviews"][index]} Reviews",
                                          style: GoogleFonts.inter(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(179, 182, 187, 1),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),

                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Popular Destinations",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Sorted by higher rating",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(127, 130, 134, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 182,
                          
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 145,
                                    height: 145,
                                    margin: EdgeInsets.only(left: 15,right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color.fromRGBO(233, 237, 248, 1),
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                            "assets/svg/img.svg")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cancun",
                                          style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                    
                                        SizedBox(
                                          width: 60,
                                        ),
                                        
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 12,
                                              color: Color.fromRGBO(228, 161, 2, 1),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "4.6",
                                              style: GoogleFonts.inter(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    Color.fromRGBO(228, 161, 2, 1),
                                              ),
                                            ),

                                            
                                          ],
                                        ),

                                        
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${data().card2data["country"][index]}",
                                          style: GoogleFonts.inter(
                                              color:Color.fromRGBO(179, 182, 187, 1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                    
                                        SizedBox(
                                          width: 25,
                                        ),
                                        
                                        
                                        Text(
                                          "${data().card2data["reviews"][index]} Reviews",
                                          style: GoogleFonts.inter(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(179, 182, 187, 1),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  
            ],
          ),
        ),
      ),
    );
  }
}
