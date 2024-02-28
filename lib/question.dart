import 'package:flutter/material.dart';

import 'server.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  int no=0;
  List question=[
    Quiz(qus: 'Bats are blind.',ans:false),
    Quiz(qus: 'Sharks are mammals.',ans: false),
    Quiz(qus: 'Pigs roll in the mud because they dont like being clean.',ans:false),
    Quiz(qus: ' It takes a sloth two weeks to digest a meal.',ans: true),
    Quiz(qus: ' Galapagos tortoises sleep up to 16 hours a day.',ans: true),
    Quiz(qus: ' Herbivores are animal eaters.',ans: false),
    Quiz(qus: ' Arachnophobia is the fear of bathing.',ans:  false),
    Quiz(qus: ' Butterflies taste things with their wings.',ans: false),
    Quiz(qus: 'Lightning can’t strike in the same place twice',ans:false),
    Quiz(qus: 'Scotland’s national animal is a unicorn',ans:true),

  ];
  void nextqus(){
    if(no<question.length)
    {
      no++;
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
               nextqus();
            });
          },
          child: Text(' False'),
        ),
      ]),
    );
  }
}
