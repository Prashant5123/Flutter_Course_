// 7. Create a screen in which add 5 network images horizontally with size (width: 150, height: 300) and make scrollable.

import 'package:flutter/material.dart';
class ProblemStatement7 extends StatelessWidget{
  const ProblemStatement7({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Animals"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),

        body:  SingleChildScrollView(
          physics:const  BouncingScrollPhysics(decelerationRate:ScrollDecelerationRate.normal),
          scrollDirection: Axis.horizontal,
          child: SizedBox(
           height: MediaQuery.of(context).size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 300,
                  child: Image.network("https://hips.hearstapps.com/hmg-prod/images/baby-animals-koala-65f8b019c09b3.jpg?crop=0.6654099905749293xw:1xh;center,top&resize=980:*",
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 300,
                  child: Image.network("https://images.pexels.com/photos/34098/south-africa-hluhluwe-giraffes-pattern.jpg?cs=srgb&dl=pexels-pixabay-34098.jpg&fm=jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 300,
                  child: Image.network("https://media.istockphoto.com/id/1154370446/photo/funny-raccoon-in-green-sunglasses-showing-a-rock-gesture-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=kkZiaB9Q-GbY5gjf6WWURzEpLzNrpjZp_tn09GB21bI=",
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 300,
                  child: Image.network("https://static.toiimg.com/photo/105901302/105901302.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 300,
                  child: Image.network("https://thumbs.dreamstime.com/b/zoo-animals-nature-background-group-together-text-area-range-elephant-zebra-bear-rhino-use-31663413.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}