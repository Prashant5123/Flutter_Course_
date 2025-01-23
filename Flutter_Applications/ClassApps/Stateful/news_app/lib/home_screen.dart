import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:news_app/categories.dart';
import 'package:news_app/profile_screen.dart';

import 'package:news_app/web_view.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool imageUrl = true;
  bool _isLoading = false;
  Map categoryData = {};
  String category = "";
  int currentIndexBottomNavigation=0;
  String? webData;

  @override
  void initState() {
    super.initState();
  }


  void _navigateToWeb(String link)async{
    setState(() {
      _isLoading=true;
    });

    Uri url=Uri.parse(link);
    http.Response response= await http.get(url);
    webData=response.body;

    Future.delayed(Duration(seconds: 3),()=>{
      setState(() {
        _isLoading=false;
      }),

      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebContent(webData: webData!,)))
    });


  }

  void _navigateToSecondPage(String category) async {
    setState(() {
      _isLoading = true;
    });

    Uri url = Uri.parse(
        "https://newsdata.io/api/1/latest?apikey=pub_65602d0be076cdba2fa32938ade0fc7a7df05&language=en&country=in&category=$category");
    http.Response response = await http.get(url);
    categoryData = jsonDecode(response.body);

    // Simulate a 3-second loading delay
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });

      // Navigate to the second page
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Categories(
                  categoryData: categoryData,
                )),
      );
    });
  }

  Map categoryImgUrl = {
    "Business": "assets/jpg/Business.jpg",
    "crime": "assets/jpg/crime.jpg",
    "sports": "assets/jpg/sports.jpg",
    "education": "assets/jpg/education.jpg",
    "entertainment": "assets/jpg/entertainment.jpg",
    "environment": "assets/jpg/environment.jpg",
    "food": "assets/jpg/food.jpg",
    "health": "assets/jpg/health.jpg",
    "lifestyle": "assets/jpg/lifestyle.jpg",
    "politics": "assets/jpg/politics.jpg",
    "science": "assets/jpg/science.png",
    "technology": "assets/jpg/technology.jpg",
    "tourism": "assets/jpg/tourism.jpg",
    "world": "assets/jpg/world.jpg"
  };

  List categories = [
    "Business",
    "crime",
    "sports",
    "education",
    "entertainment",
    "environment",
    "food",
    "health",
    "lifestyle",
    "politics",
    "science",
    "technology",
    "tourism",
    "world"
  ];
  final controller = PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 50,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
       
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Morning,",
                  style: TextStyle(
                    fontSize: 14,
                     color: const Color.fromARGB(255, 121, 121, 121),
                    fontWeight:FontWeight.bold
                  ),
                ),
                Text("Prashant",
                   style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 121, 121, 121),
                    fontWeight:FontWeight.bold
                  ),
                ),

                
              
              ],
            ),

            SizedBox(
                  height: 5,
                ),
                Text(date,
                   style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold
                  ),
                )
          ],
        ),
      
        backgroundColor: const Color.fromARGB(255, 180, 224, 255),
      ),
      body: Stack(children: [
        
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              
        
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Categories",
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  height: 200,
                  child: PageView.builder(
                      controller: controller,
                      itemCount: categories.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: GestureDetector(
                            onTap: () {
                              _navigateToSecondPage(categories[index]);
                            },
                            child: Column(
                              children: [
                            
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 150,
                                    width: 300,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromARGB(
                                        255, 203, 202, 202),
                                    offset: Offset(4, 4),
                                    blurRadius: 4),
                              ]),
                                  
                                    child: Image.asset(categoryImgUrl[categories[index]],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                            
                                
                                Text(
                                    categories[index].toString().toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),
                                    ),
                              ],
                            ),
                          ),
                        );
                      })),
              Center(
                  child: SmoothPageIndicator(
                controller: controller,
                count: categories.length,
                effect: ScrollingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor:  Color.fromARGB(255, 180, 224, 255),
                  dotColor: Colors.grey,
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Trending News",
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: newsData["results"]
                    .length, //GetNews.newsData["results"].length,,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 160),
                      child: GestureDetector(
                        onTap: () {
                         
                          
                         
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => WebView(index: index),),);
                         

                          

                           
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromARGB(
                                        255, 203, 202, 202),
                                    offset: Offset(4, 4),
                                    blurRadius: 4),
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Visibility(
                                  visible: (newsData["results"][index]
                                              ["image_url"] !=
                                          null)
                                      ? true
                                      : false,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.network(
                                        newsData["results"][index]["image_url"]
                                            .toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: (newsData["results"][index]
                                              ["title"] ==
                                          null)
                                      ? false
                                      : true,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      newsData["results"][index]["title"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        if (_isLoading)
          Stack(
            children: [
              // Blur effect
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 1),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              // Loading spinner
              Center(
                child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircularProgressIndicator(),
                    )),
              ),
            ],
          ),
      ]),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        currentIndex:currentIndexBottomNavigation ,
        onTap: (index){
          if(index==2){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
          }
          setState(() {
            currentIndexBottomNavigation=index;
          });
        },
        items: [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ]
        
        ),

      
    );
  }
}
