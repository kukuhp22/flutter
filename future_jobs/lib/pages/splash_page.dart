import 'dart:async';
import 'package:flutter/material.dart';

import 'started_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GetStartedPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Logo
            Container(
              child: Image.asset(
                "assets/img/logo.png",
                width: 59,
                height: 76,
              ),
            ),
            SizedBox(height: 50),
            // 2. Text "FutureJOBs"
            Text(
              "futurejobs".toUpperCase(),
              style: TextStyle(
                fontSize: 32,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
