import 'package:chatty_bwa/chat_tile.dart';
import 'package:chatty_bwa/message.dart';
import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Message(),
              ),
            );
          });
        },
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  "assets/img/profil_pic.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  "Susan Megadov",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friends",
                        style: titleStyle,
                      ),
                      ChatTile(
                        imageUrl: "assets/img/friend1.png",
                        name: "Kukuh Adhi",
                        text: "Tak tunggu di depan dek...",
                        time: "Now",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/img/friend2.png",
                        name: "Natasha Romanov",
                        text: "I saw it clearly and mig...",
                        time: "17:35",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/img/friend1.png",
                        name: "Joshua Suherman",
                        text: "Sorry, you’re not my ty...",
                        time: "15:44",
                        unread: true,
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Groups",
                        style: titleStyle,
                      ),
                      ChatTile(
                        imageUrl: "assets/img/group1.png",
                        name: "Komunitas Flutter",
                        text: "Sorry, you’re not my ty...",
                        time: "18:00",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/img/group2.png",
                        name: "Marimas FC",
                        text: "Aku wes ning lokasi....",
                        time: "14:18",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/img/group3.png",
                        name: "Grup bahaso",
                        text: "The car which does not...",
                        time: "17:30",
                        unread: true,
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
