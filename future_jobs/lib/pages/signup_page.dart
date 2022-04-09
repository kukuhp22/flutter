import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:future_jobs/pages/home_page.dart';
import 'package:future_jobs/theme.dart';
import 'signIn_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  TextEditingController emailCon = TextEditingController(text: "");
  bool isUploaded = false;

  @override
  Widget build(BuildContext context) {
    Widget uploadImg() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset("assets/img/upload_img.png", width: 120, height: 120),
            ],
          ),
        ),
      );
    }

    Widget showImg() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset("assets/img/user_pic.png", width: 120, height: 120),
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: 24, top: 50, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Title
                Text("Sign Up", style: titleTextStyle),
                // 2. SubTitle
                Text("Begin New Journey", style: subTitleTextStyle),
                SizedBox(height: 40),
                // 3. Gambar dan Form
                // Center(
                //   child: Column(
                //     children: [
                //       Image.asset(
                //         "assets/img/user_pic.png",
                //         height: 120,
                //         width: 120,
                //       ),
                //     ],
                //   ),
                // ),
                isUploaded ? showImg() : uploadImg(),
                SizedBox(height: 40),
                // 4. TextFormField Form. FullName
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Text
                    Text(
                      "Full Name",
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    // 2. TextFormField FullName
                    TextFormField(
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
                SizedBox(height: 20),
                // 5. TextFormField Form. Email Address
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Text
                    Text(
                      "Email Address",
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    // 2. TextFormField EmailAddress
                    TextFormField(
                      controller: emailCon,
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
                // 6. TextFormField Form. Password
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Text
                    Text(
                      "Password",
                      style: titleTextStyle,
                    ),
                    // 2. TextFormField Password
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
                SizedBox(height: 20),
                // 7. TextFormField Form. Your Goal
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Text
                    Text(
                      "Your Goal",
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    // 2. TextFormField FullName
                    TextFormField(
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
                // 8. Button SignUp
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4141A4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                      fixedSize: Size(400, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                // 9. TextButton Back to SignIn Screen.
                Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                      },
                      child: Text(
                        "Back to Sign In",
                        style: bawahButtonTextStyle,
                      ),
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
