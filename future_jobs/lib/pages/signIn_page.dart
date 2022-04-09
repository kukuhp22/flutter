import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:email_validator/email_validator.dart';

import 'signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  TextEditingController emailContr = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Title
                Text(
                  "Sign In",
                  style: titleTextStyle,
                ),
                // 2. SubTitle
                Text(
                  "Build Your Career",
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 40),
                // 3. Gambar dan Form
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/img/illustration_one.png",
                        width: 262,
                        height: 240,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                // Email Address Field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: emailContr,
                      onChanged: (value) {
                        print(value);
                        bool isValid = EmailValidator.validate(value);
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: isEmailValid
                                ? Color(0xFF4141A4)
                                : Color(0xFFFD4F56),
                          ),
                        ),
                        hintText: "",
                      ),
                      style: TextStyle(
                        color: isEmailValid
                            ? Color(0xFF4141A4)
                            : Color(0xFFFD4F56),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Password Field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xFF4141A4)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                // Button Sign In
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4141A4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                      fixedSize: Size(400, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ));
                    },
                    child: Text(
                      "Create New Account",
                      style: bawahButtonTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
