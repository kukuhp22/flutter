import 'package:flutter/material.dart';
import 'package:future_jobs/pages/started_page.dart';

import 'pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/start": (context) => GetStartedPage(),
        // "/": (context) => OnboardingPage(),
        // "/sign-in": (context) => SignInPage(),
        // "/sign-up": (context) => SignUpPage(),
        // "/home": (context) => HomePage(),
      },
    );
  }
}
