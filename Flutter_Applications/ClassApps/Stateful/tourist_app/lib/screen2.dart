import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "London",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "(England)",
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Text(
              "Included",
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              "For more details press on the icons.",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(179, 182, 187, 1),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            //flight row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //flight
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(53, 109, 250, 1),
                          )),
                      child: Center(
                        child: Container(
                          height: 59,
                          width: 59,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(53, 109, 250, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: SvgPicture.asset("assets/svg/flight.svg")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Flight",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                //hotel
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(53, 109, 250, 1),
                          )),
                      child: Center(
                        child: Container(
                          height: 59,
                          width: 59,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(53, 109, 250, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: SvgPicture.asset("assets/svg/hotel.svg")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hotel",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                // car
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(53, 109, 250, 1),
                          )),
                      child: Center(
                        child: Container(
                          height: 59,
                          width: 59,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(53, 109, 250, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: SvgPicture.asset("assets/svg/car.svg")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Car",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                //tour
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(53, 109, 250, 1),
                          )),
                      child: Center(
                        child: Container(
                          height: 59,
                          width: 59,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(53, 109, 250, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: SvgPicture.asset("assets/svg/tour.svg")),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Tour",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Text(
                  "Ratings & Reviews",
                  style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Color.fromRGBO(228, 161, 2, 1),
                  size: 20,
                ),
                Text("4.6",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(228, 161, 2, 1),
                    )),
              ],
            ),

            //sorted
            Row(
              children: [
                Text(
                  "Sorted by recent reviews",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color.fromRGBO(179, 182, 187, 1),
                ),
                const Spacer(),
                Text(
                  "848 Reviews",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            //card container
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(233, 237, 248, 1),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("London is great!",
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                      const Spacer(),
                      Text(
                        "John Doe",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Color.fromRGBO(228, 161, 2, 1),
                      ),
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Color.fromRGBO(228, 161, 2, 1),
                      ),
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Color.fromRGBO(228, 161, 2, 1),
                      ),
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Color.fromRGBO(228, 161, 2, 1),
                      ),
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: Color.fromRGBO(228, 161, 2, 1),
                      ),
                      const Spacer(),
                      Text(
                        "12/08/18",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Text(
              "Gallery",
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),

            Row(
              children: [
                Text(
                  "Sorted by recent photos",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color.fromRGBO(179, 182, 187, 1),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 145,
                          height: 145,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(233, 237, 248, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: SvgPicture.asset("assets/svg/img.svg"),
                          ),
                        ),

                        
                      ],
                    );
                  }),
            ),

            Divider(
              endIndent: 0,
            ),

            Row(
              children: [
                Text("Expires in: 58 h 23 min",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                ),

                Spacer(),

                Container(
                  height: 11,
                  width: 44,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(53, 109, 250, 1),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Center(
                    child: Text("\$330",),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
