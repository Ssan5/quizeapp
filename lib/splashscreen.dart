import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizeapp/question.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Question()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.network(
              "https://thumbs.dreamstime.com/b/quiz-icon-isolated-dark-background-quiz-icon-isolated-dark-background-simple-vector-logo-235742772.jpg"),
        ),
      ]),
    );
  }
}
