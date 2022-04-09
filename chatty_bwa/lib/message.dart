import 'package:chatty_bwa/chat_tile_detail.dart';
import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/group1.png",
                    height: 55,
                    width: 64,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Marimas FC",
                        style: titleStyle,
                      ),
                      Text(
                        "15.392",
                        style: subtitleStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset("assets/img/btn.png", height: 50, width: 50),
                ],
              ),
            ),
            ChatDetail(
                imageUrl: "assets/img/friend2.png",
                text: "How are ya guys?",
                time: "2:38"),
            ChatDetail(
                imageUrl: "assets/img/kosong.png",
                text: "Find here :P",
                time: "3:54"),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Thinking about how to deal with this client from hell...",
                          style: subtitleStyle,
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          "22:08",
                          style: subtitleStyle,
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/img/profil_pic.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
            ChatDetail(
                imageUrl: "assets/img/friend1.png",
                text: "Love them",
                time: "12:49"),
            Spacer(),
            Container(
              width: 350,
              height: 55,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(
                  0xffFFFFFF,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Text(
                    "Type Message...",
                    style: subtitleStyle,
                  ),
                  Spacer(),
                  Image.asset("assets/img/near.png"),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
