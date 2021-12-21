import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipped/screen/welcome/welcome.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }


  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591F),
                gradient: LinearGradient(
                    colors: [(new Color(0x483d8b)), new Color(0xffF2861E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Text(
                "SHIPPED",style: GoogleFonts.creteRound(
                  textStyle: TextStyle(
                      fontSize: 56, color: Colors.red, fontWeight: FontWeight.w900)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

