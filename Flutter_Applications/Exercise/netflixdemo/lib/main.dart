import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class Movies{
  List<Map> moviesList=[
    {
      "category":"Action Movies",
      "url":[
        "https://www.uphe.com/sites/default/files/styles/scale__344w_/public/2023/07/FastX_Poster%20ARt.jpg?itok=rlQoYVBu",
        "https://m.media-amazon.com/images/M/MV5BZTAzODc1ZjUtNGQwZS00YTc2LTliNzQtMDdlNzllNmU5Yzk4XkEyXkFqcGc@._V1_.jpg",
        "https://static.toiimg.com/photo/79258034.cms",
        "https://images.bewakoof.com/utter/content/4863/content_Singham_-_Bollywood_Hindi_Action_Movies_-_Bewakoof_Blog.jpg",
        "https://assets.vogue.in/photos/5f16b3bc9ffca08d1848369b/2:3/w_2560%2Cc_limit/must-watch%2520action%2520movies.jpg",
       
      ],

    },
    {
      "category":"Horror Movies",
      "url":[
        "https://qqcdnpictest.mxplay.com/pic/484f535d77542bca63e21efb896f4cd6/en/2x3/312x468/test_pic1638541013780.webp",
        "https://resizing.flixster.com/HyMxXH1CROI3IIZY7TE8923PZ8E=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzM5MzQ0N2VhLTE3MGMtNDE0MS04MmQ3LTFjYjUzYTE4NzliMS5qcGc=",
        "https://emotion.utu.fi/wp-content/uploads/2020/01/conjuring2.jpg",
        "https://assets.gqindia.com/photos/5e32c1ac75d13800081a4893/1:1/w_841,h_841,c_limit/Horror-films-2020.jpg",
        "https://im.rediff.com/movies/2013/sep/16worst-horror-films-of-bollywood1.jpg",
      ],
    },
    {
      "category":"Thriller Movies",
      "url":[
        "https://www.uphe.com/sites/default/files/styles/scale__344w_/public/2023/07/FastX_Poster%20ARt.jpg?itok=rlQoYVBu",
        "https://m.media-amazon.com/images/M/MV5BZTAzODc1ZjUtNGQwZS00YTc2LTliNzQtMDdlNzllNmU5Yzk4XkEyXkFqcGc@._V1_.jpg",
        "https://static.toiimg.com/photo/79258034.cms",
        "https://m.media-amazon.com/images/M/MV5BMzNmZWMzNGQtMWZjZC00YTU2LTgwNGUtZTQwZGFkODBiOTRmXkEyXkFqcGc@._V1_.jpg",
        "https://images.bewakoof.com/utter/content/4863/content_Singham_-_Bollywood_Hindi_Action_Movies_-_Bewakoof_Blog.jpg",
        "https://assets.vogue.in/photos/5f16b3bc9ffca08d1848369b/2:3/w_2560%2Cc_limit/must-watch%2520action%2520movies.jpg"
      ],

    },
    {
      "category":"Ghost Movies",
      "url":[
        "https://qqcdnpictest.mxplay.com/pic/484f535d77542bca63e21efb896f4cd6/en/2x3/312x468/test_pic1638541013780.webp",
        "https://resizing.flixster.com/HyMxXH1CROI3IIZY7TE8923PZ8E=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzM5MzQ0N2VhLTE3MGMtNDE0MS04MmQ3LTFjYjUzYTE4NzliMS5qcGc=",
        "https://emotion.utu.fi/wp-content/uploads/2020/01/conjuring2.jpg",
        "https://assets.gqindia.com/photos/5e32c1ac75d13800081a4893/1:1/w_841,h_841,c_limit/Horror-films-2020.jpg",
        "https://im.rediff.com/movies/2013/sep/16worst-horror-films-of-bollywood1.jpg",
      ],
    }
  ];
}

class MainApp extends StatelessWidget {
   
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar:AppBar(
          leading:SizedBox(
            height: 32,
            width: 18,
            child: Image.asset("assets/netflix.png"),
          ),
          
          actions: const [
            Padding(
              padding:  EdgeInsets.only(right: 25),
              child: Icon(Icons.search,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: Movies().moviesList.length,
          itemBuilder: (BuildContext context,int index1){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${Movies().moviesList[index1]["category"]}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
                ),

                
                SizedBox(
                  height: 200,

                  child: ListView.builder(
                    itemCount: Movies().moviesList[index1]["url"].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(BuildContext context,int index2){
                      return Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 300,
                            width: 150,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Image.network("${Movies().moviesList[index1]["url"][index2]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                  
                      );
                    }
                  ),
                ),

                SizedBox(
                  height: 15,
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
