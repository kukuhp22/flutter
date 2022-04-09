import 'package:flutter/material.dart';

import 'signIn_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 2. Isi sebenarnya
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. title
                Text(
                  "Build Your Next\nFuture Career Like\na Master",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                // 2. subtitle
                Text(
                  "8.000 jobs available",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 400),
                // 3. button Get Started
                Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66)),
                      backgroundColor: Colors.white,
                      fixedSize: Size(200, 45),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFF4141A4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // 3. button Sign In
                Center(
                  child: Container(
                    width: 200,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                      },
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          )),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
