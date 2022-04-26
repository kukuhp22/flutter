import "package:flutter/material.dart";
import 'package:login_black/login.dart';

import 'splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "/sign-in": (context) => Login(),
      },
    );
  }
}
