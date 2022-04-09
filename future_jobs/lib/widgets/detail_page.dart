import 'package:flutter/material.dart';

import '../theme.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    // tombol untuk apply
    Widget successApply() {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF4141A4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
            fixedSize: Size(200, 50),
          ),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            "Apply Job",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    // tombol batal apply
    Widget cancelApply() {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFD4F56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
            fixedSize: Size(200, 50),
          ),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            "Cancel Apply",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    // notifikasi sudah apply
    Widget appliedDone() {
      return Container(
        width: 320,
        height: 60,
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(49),
          color: Color(0xFFECEDF1),
        ),
        child: Center(
          child: Text(
            "You have applied this job and the recruiter will contact you",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Poppins",
              color: Color(0xFFA2A6B4),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              isApplied ? appliedDone() : SizedBox(),
              // HEADER //
              // 1. Logo Google
              Image.asset("assets/img/google.png", width: 60, height: 60),
              SizedBox(height: 20),
              // 2. Job Title
              Text(
                "Front-End Developer",
                style: jobApplyTextStyle,
              ),
              // 3. Perusahaan
              Text(
                "Google, Inc • Jakarta",
                style: companyTextStyle,
              ),
              // end of HEADER //
              SizedBox(height: 30),
              // BODY //
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 4. About Job
                    Text(
                      "About the Job",
                      style: titleRequirementTextStyle,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Full-Time On Site",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Start at \$18,000 per month",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // 5. Qualification
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 4. About Qualification
                    Text(
                      "Qualifications",
                      style: titleRequirementTextStyle,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Candidate must possess at least a\nBachelor's Degree.",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Able to use Microsoft Office and Google\nbased service",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Have an excellent time management,\ngood at organized and details",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // 6. Responsibilities
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Text Responsibilities
                    Text(
                      "Responsibilities",
                      style: titleRequirementTextStyle,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Initiate and promote any programs, events, \ntraining, or activities.",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        // 1. icon
                        Icon(
                          Icons.radio_button_checked,
                          size: 12,
                          color: Color(0xFF2A327D),
                        ),
                        SizedBox(width: 8),
                        // 2. text
                        Text(
                          "Assessing and anticipating needs and \ncollaborate with Division.",
                          style: isiKontentTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // 7. Button
              isApplied ? cancelApply() : successApply(),
              // 8. Message Recruiter
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => SignInPage(),
                      //     ));
                    },
                    child: Text(
                      "Message Recruiter",
                      style: bawahButtonTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
