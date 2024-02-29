import 'package:flutter/material.dart';

import 'server.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  int no=0;
  String result="";
  List question=[
    Quiz(qus: '1. Bats are blind.',ans:false),
    Quiz(qus: '2. Sharks are mammals.',ans: false),
    Quiz(qus: '3. Pigs roll in the mud because they dont like being clean.',ans:false),
    Quiz(qus: '4. It takes a sloth two weeks to digest a meal.',ans: true),
    Quiz(qus: '5. Galapagos tortoises sleep up to 16 hours a day.',ans: true),
    Quiz(qus: '6. Herbivores are animal eaters.',ans: false),
    Quiz(qus: '7. Arachnophobia is the fear of bathing.',ans:  false),
    Quiz(qus: '8.  Butterflies taste things with their wings.',ans: false),
    Quiz(qus: '9. Lightning can’t strike in the same place twice',ans:false),
    Quiz(qus: '10. Scotland’s national animal is a unicorn',ans:true),

  ];
  void nextqus(){
    if(no<question.length)
    {
      no++;
    }
  }
  void answer( bool check)
  { if (check==question[no].ans)
    result= "Correct ✅  ";
     else{
       result="Wrong ❌";
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            question[no].qus,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors. black,
              fontSize: 30.0,
            ),
          ),
        ),
        SizedBox(height: 50),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors. white),
            backgroundColor :MaterialStateProperty.all<Color>(Colors. green),
          ),
          onPressed: () {
            setState(() {
              answer(true);
              nextqus();
            });},
          child: Text('True'),
        ),
        SizedBox(height: 20),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor :MaterialStateProperty.all<Color>(Colors.red)
          ),
          onPressed: () {
            setState(() {
              answer(false);

               nextqus();
            });
          },
          child: Text(' False'),
        ),
        SizedBox(height: 50),
        Text(
        result,
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.black45,
    fontSize: 20.0,
    ),
        ),
      ]),
    );
  }
}
