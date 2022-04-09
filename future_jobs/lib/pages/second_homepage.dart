import 'package:flutter/material.dart';
import 'package:future_jobs/widgets/just_posted.dart';

import '../theme.dart';

class SecondHomePage extends StatelessWidget {
  final String imgUrl;
  final String jobTitle;

  SecondHomePage({this.imgUrl = '', this.jobTitle = ''});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                // 1. Stack untuk gambar
                Stack(
                  children: [
                    // 1. Gambar Dulu
                    ClipRRect(
                      child: Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // 2. Text
                    Padding(
                        padding: EdgeInsets.only(top: 190, left: 24),
                        child: Text(
                          jobTitle,
                          style: jobTitleTextStyle,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 225, left: 24),
                      child: Text(
                        "12,309 available",
                        style: availableJobTextStyle,
                      ),
                    ),
                  ],
                ),
                // 2. List
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Big Company",
                        style: jobTextStyle,
                      ),
                      SizedBox(height: 16),
                      // Custom list
                      Column(
                        children: [
                          JustPosted(
                            job: "Front-End Developer",
                            comp: "Google",
                            logoUrl: "assets/img/google.png",
                          ),
                          SizedBox(height: 16),
                          JustPosted(
                            job: "UI Designer",
                            comp: "Instagram",
                            logoUrl: "assets/img/ig.png",
                          ),
                          SizedBox(height: 16),
                          JustPosted(
                            job: "Data Scientist",
                            comp: "Facebook",
                            logoUrl: "assets/img/fb.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // 3. New Start-Up
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Startups",
                        style: jobTextStyle,
                      ),
                      SizedBox(height: 16),
                      // Custom list
                      Column(
                        children: [
                          JustPosted(
                            job: "Front-End Developer",
                            comp: "Google",
                            logoUrl: "assets/img/google.png",
                          ),
                          SizedBox(height: 16),
                          JustPosted(
                            job: "UI Designer",
                            comp: "Instagram",
                            logoUrl: "assets/img/ig.png",
                          ),
                          SizedBox(height: 16),
                          JustPosted(
                            job: "Data Scientist",
                            comp: "Facebook",
                            logoUrl: "assets/img/fb.png",
                          ),
                        ],
                      ),
                    ],
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
