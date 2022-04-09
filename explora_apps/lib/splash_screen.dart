import 'package:explora_apps/register.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final wid = size.width;
    final heig = size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: greyBg,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // 1. Gambar background dan container paling bawah...
              Column(
                children: [
                  // 1. Container
                  Container(
                    height: 180,
                    width: wid,
                    color: greyBg,
                  ),
                  // 2. Gambar background
                  Image.asset(
                    "assets/img/splash.png",
                  ),
                ],
              ),

              // 2. UTAMA ISI
              Center(
                child: Column(
                  children: [
                    // 1. judul Explora
                    Padding(
                      padding: EdgeInsets.only(top: 140),
                      child: Text(
                        "EXPLORA",
                        style: judul,
                      ),
                    ),
                    SizedBox(height: 12),
                    // 2. sub judul
                    Text(
                      "- IF NOT NOW, WHEN ? - ",
                      style: subJudul,
                    ),
                    SizedBox(height: 88),
                    // 3. Login Button
                    Container(
                      width: 173,
                      height: 43,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: bgCol,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          "LOG IN",
                          style: btnText,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    // 4. Register Button
                    Container(
                      width: 173,
                      height: 43,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: bgCol,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
                          style: btnText,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    // 5. Icon Arrow Up.
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_up),
                      iconSize: 42,
                      onPressed: () {},
                      color: bgCol,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
