import 'package:flutter/material.dart';



class Screen2 extends StatelessWidget{
  const Screen2({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide()),
          title: const Text("My Cart",
          
             style: TextStyle(
              color: Color.fromARGB(219, 70, 18, 182),
              fontSize: 30,
              fontWeight: FontWeight.w700


             ),
          ),
          centerTitle: true,

          leading:const  Icon(Icons.arrow_back_ios_new_outlined,
            color: Color.fromARGB(219, 70, 18, 182),
          ),

          
        ),


        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 236, 236),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 150,
                            width: 150,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                          
                              fit: BoxFit.cover,
                            )),
                        ),
              
                        Expanded(
                          child: Container(
                            height: 150,
                            width: 220,
                            
                            margin: const EdgeInsets.only(left: 10),
                            
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              
                              children: [
                                const Text("Nike Shoes",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                        
                                const Text("With iconic style and legendary comfort, on repeat.",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                        
                                const SizedBox(
                                  height: 40,
                                ),
                                        
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("\$570.00",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                        
                                    Row(
                                      children: [
                                        const Icon(Icons.remove),
                                        
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        
                                          child:const  Center(
                                            child: Text("1"),
                                            ),
                                        
                                          
                                        ),
                                        const Icon(Icons.add),
                                    ],)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      
                    ),
                  ),
              
              
                  Container(
                    height: 200,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 236, 236),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 150,
                            width: 150,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                          
                              fit: BoxFit.cover,
                            )),
                        ),
              
                        Expanded(
                          child: Container(
                            height: 150,
                            width: 220,
                            
                            margin: const EdgeInsets.only(left: 10),
                            
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              
                              children: [
                                const Text("Nike Shoes",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                        
                                const Text("With iconic style and legendary comfort, on repeat.",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                        
                                const SizedBox(
                                  height: 40,
                                ),
                                        
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("\$570.00",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                        
                                    Row(
                                      children: [
                                        const Icon(Icons.remove),
                                        
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        
                                          child:const  Center(
                                            child: Text("1"),
                                            ),
                                        
                                          
                                        ),
                                        const Icon(Icons.add),
                                    ],)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      
                    ),
                  ),
              
                  
                ],
              ),

               Column(
                
                children: [
                   const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal:",
                            style: TextStyle(
                              color: Color.fromARGB(255, 113, 110, 110),
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text("\$800.00",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee:",
                          style: TextStyle(
                            color: Color.fromARGB(255, 113, 110, 110),
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text("\$5.00",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discount:",
                          style: TextStyle(
                            color: Color.fromARGB(255, 113, 110, 110),
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text("40%",
                          style: TextStyle(
                            
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),


                    SizedBox(
                      width: 360,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(219, 70, 18, 182))),
                        onPressed: (){
                      
                        }, 
                        child: const Text("Checkout for \$480.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ),
                    )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}