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
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.network(
              "https://t3.ftcdn.net/jpg/01/75/51/82/360_F_175518238_4cw0NHrqrVb61e9KsxslBAqvlkfrtGPn.jpg"),
        ),
      ]),
    );
  }
}
