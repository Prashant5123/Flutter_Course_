import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> allQuestions=[
    {
      "question":"Which data type can hold the value of both int and double?",
      "options":[
        "num",
        "double",
        "int",
        "numeric"
      ],
      "correctAns":0
    },
    {
      "question":"Which of the following data can be used to represent 'John' ?",
      "options":[
        "string",
        "char",
        "String",
        "str"
      ],
      "correctAns":2
    },
    {
      "question":"Which of the following is not a built-in data type in Dart?",
      "options":[
        "Int",
        "String",
        "double",
        "int",

      ],
      "correctAns":0
    },
    {
      "question":"Which of the following is a correct syntax for defining a variable in dart?",
      "options":[
        "var x = 10",
        "x=10",
        "integer x = 10",
        "variable x = 10"
      ],
      "correctAns":0
    },
    
    {
      "question":"Which of the following is not an Arithmetic operator?",
      "options":[
        "%",
        "+",
        "-",
        "@"
      ],
      "correctAns":3
    },

  ];
  int screen=1;
  int currentQueIndex=0;
  int selectedAns=-1;
  int score=0;

  WidgetStateProperty<Color?> setColor(int optionIndex){
    if(selectedAns!=-1){
      if(optionIndex==allQuestions[currentQueIndex]["correctAns"]){
        return WidgetStateProperty.all(Colors.green);
      }
      else if(selectedAns==optionIndex){
        return WidgetStateProperty.all(Colors.red);
      }
      else{
        return WidgetStateProperty.all(Colors.white);
      }
    }
    else{
      return WidgetStateProperty.all(Colors.white);
    }
  }
  

  @override
  Widget build(BuildContext context){
    return appScreen();
  }

  Scaffold appScreen(){
    if(screen==1){
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 212, 226),
        appBar: AppBar(
          title:const Text("Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 24, 58, 86),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width:350,
                height: 350,
                child: Image.asset("assets/quiz1.png"),
          
                
              ),

              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 24, 58, 86))),
                  onPressed: (){
                    screen=2;
                    setState(() {
                      
                    });
                  },

                  child:const Text("Start",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,

                    ),
                  ),
                ),
              ),

               const SizedBox(
              height: 150,
            ),
            ],
          ),
        ),
      );
    }else if(screen==2){
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 212, 226),
        appBar: AppBar(
          title:const Text("Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const  Color.fromARGB(255, 24, 58, 86),
        ),


        body:Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Question:${currentQueIndex+1}/${allQuestions.length}",
                  style:const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 28,
            ),

            Container(
              padding: const EdgeInsets.all(10),
              margin:const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(allQuestions[currentQueIndex]["question"],
                style:const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

            ConstrainedBox(
              constraints:const BoxConstraints(
                minHeight: 50,
                maxWidth: 380,
                minWidth: 380,
              ),
              
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(0),
                
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=0;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("A. ${allQuestions[currentQueIndex]["options"][0]}",
                  style:const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

             ConstrainedBox(
              constraints:const BoxConstraints(
                minHeight: 50,
                maxWidth: 380,
                minWidth: 380,
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(1),
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=1;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("B. ${allQuestions[currentQueIndex]["options"][1]}",
                  style:const TextStyle(
                     color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

            ConstrainedBox(
              constraints:const BoxConstraints(
                minHeight: 50,
                maxWidth: 380,
                minWidth: 380,
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(2),
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=2;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("C. ${allQuestions[currentQueIndex]["options"][2]}",
                  style:const TextStyle(
                     color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 28,
            ),

             ConstrainedBox(
              constraints:const BoxConstraints(
                minHeight: 50,
                maxWidth: 380,
                minWidth: 380,
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: setColor(3),
                ),
                onPressed: (){
                  if(selectedAns==-1){
                    selectedAns=3;
                  }
                  setState(() {
                    
                  });
                },
                child: Text("D. ${allQuestions[currentQueIndex]["options"][3]}",
                  style:const TextStyle(
                     color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: const  Color.fromARGB(255, 24, 58, 86),
          onPressed: (){
            if(selectedAns==allQuestions[currentQueIndex]["correctAns"]){
              score++;
            }
            if(selectedAns!=-1){
              if(currentQueIndex<allQuestions.length-1){
                currentQueIndex++;
                selectedAns=-1;
              }else{
                screen=3;
              }
            }

            setState(() {
              
            });
          },

          child: const Icon(Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    }else{
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 212, 226),
        appBar: AppBar(
          title:const Text("Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 24, 58, 86),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("assets/trophy.png")
              ),
            
              const SizedBox(
                height: 28,
              ),

              const Text("Congratulations",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                ),
              ),

              const SizedBox(
                height: 28,
              ),

              Text("Score: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                ),
              ),

              const SizedBox(
                height: 28,
              ),

              SizedBox(
                height: 50,
                width: 200,
                
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 24, 58, 86))),
                  onPressed: (){
                    
                    selectedAns=-1;
                    currentQueIndex=0;
                    screen=2;
                    score=0;
                    setState(() {
                      
                    });
                  },
                
                  child: const Text("Retest",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
}
