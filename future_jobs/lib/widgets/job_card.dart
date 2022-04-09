import 'package:flutter/material.dart';
import 'package:future_jobs/pages/second_homepage.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imgUrl;

  JobCard({this.text = '', this.imgUrl = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondHomePage(
                jobTitle: text,
                imgUrl: imgUrl,
              ),
            ));
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            // Image URL
            image: AssetImage(imgUrl),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10,
              bottom: 16,
            ),
            child: Text(
              // Job Title
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
