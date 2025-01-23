import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState()=> _MyAppState();
}

class _MyAppState extends State{
  int num=1;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes",
          style: TextStyle(
            color: Color.fromARGB(219, 70, 18, 182),
          ),
          ),

          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.shopping_cart,
                color: Color.fromARGB(219, 70, 18, 182),
              ),
            ),
          ],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              )
            ),

            const SizedBox(
              height: 20,
            ),
            

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Nike Air Force 1 "07',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding:const  EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(219, 70, 18, 182))),
                    onPressed: (){
              
                    },
              
                    child: const Text("SHOES",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(219, 70, 18, 182))),
                    onPressed: (){
              
                    },
              
                    child: const Text("FOOTWEAR",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 380,
                child: Text("With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era- echoing '80s construction and reflective-design Swoosh logos",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )),
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text("Quantity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  ),

                  GestureDetector(
                    onTap: (){
                      if(num>0){
                        num--;
                      }

                      setState(() {
                        
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child:const Icon(Icons.remove),
                    ),
                  ),

                  Container(
                    height: 30,
                    width: 30,
          
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(child: Text("${num}")),
                  ),

                  GestureDetector(
                    onTap: (){
                      num++;

                      setState(() {
                        
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child:const Icon(Icons.add),
                      ),
                    
                  ),

               ]    
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
            
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(219, 70, 18, 182))),
                        onPressed: (){
                
                        }, 
                        child: const Text("PURCHASE",
                          style: TextStyle(
                            color: Colors.white
                          ),
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