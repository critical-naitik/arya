import 'dart:async';
import 'package:arya/Screens/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB71C1C),
      body: Center(
          child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText("Hello Arya",
              textStyle: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold))
        ],
      )),
    );
  }
}

