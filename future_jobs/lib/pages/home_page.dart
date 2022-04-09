import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/job_card.dart';
import 'package:future_jobs/widgets/just_posted.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // widget Header
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, right: 24, left: 24),
          child: Row(
            children: [
              // 1. Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy",
                    style: titleTextStyle,
                  ),
                  Text(
                    "Kukuh Adhi",
                    style: subTitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              // 2. User_Pic
              Image.asset(
                "assets/img/user_pic.png",
                height: 58,
                width: 58,
              ),
            ],
          ),
        ),
      );
    }
    // end of Header

    // Widget body
    Widget body() {
      return Container(
        padding: EdgeInsets.only(
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Text
            Text(
              "Hot Categories",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color(0xFF272C2F),
              ),
            ),
            SizedBox(height: 16),
            // 2. Gambar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  JobCard(
                    text: "Website Developer",
                    imgUrl: "assets/img/card_category1.png",
                  ),
                  SizedBox(width: 16),
                  JobCard(
                    text: "Mobile Developer",
                    imgUrl: "assets/img/card_category2.png",
                  ),
                  SizedBox(width: 16),
                  JobCard(
                    text: "App Designer",
                    imgUrl: "assets/img/card_category3.png",
                  ),
                  SizedBox(width: 16),
                  JobCard(
                    text: "Content Writer",
                    imgUrl: "assets/img/card_category4.png",
                  ),
                  SizedBox(width: 16),
                  JobCard(
                    text: "Video Grapher",
                    imgUrl: "assets/img/card_category5.png",
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Just Posted",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color(0xFF272C2F),
              ),
            ),
            SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: JustPosted(
                logoUrl: "assets/img/google.png",
                job: "Front-End Developer",
                comp: "Google",
              ),
            ),
            SizedBox(height: 25),
            JustPosted(
              logoUrl: "assets/img/ig.png",
              job: "UI Designer",
              comp: "Instagram",
            ),
            SizedBox(height: 25),
            JustPosted(
              logoUrl: "assets/img/fb.png",
              job: "Data Scientist",
              comp: "Facebook",
            ),
          ],
        ),
      );
    }
    // end of body

    // Widget footer
    // end of

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          showSelectedLabels: false,
          selectedItemColor: Color(0xFF272C2F),
          unselectedItemColor: Color(0xFFB3B5C4),
          iconSize: 24,
          elevation: 5,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/img/navbar1.png"),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/img/navbar2.png"),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/img/navbar3.png"),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/img/navbar4.png"),
              ),
              label: "",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Header
            header(),
            SizedBox(height: 30),
            // 2. Body
            body(),
            // 3. Footer / BottomNavBar
          ],
        ),
      ),
    );
  }
}
