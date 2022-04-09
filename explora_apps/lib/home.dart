import 'package:flutter/material.dart';

import 'constants.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int ind) {
    setState(() {
      _selectedIndex = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // 1. Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: blackCol),
            ),
            // 2. bookmark
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: blackCol),
            ),
            // 3. tiket
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks_outlined, color: blackCol),
            ),
            // 4. notification
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: blackCol),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
        backgroundColor: agakPutih,
        body: Container(
          padding: EdgeInsets.only(left: 42, right: 30, top: 53),
          child: Column(
            children: [
              // 1. Row
              Row(
                children: [
                  // 1. Icon
                  Icon(
                    Icons.menu,
                    size: 36,
                  ),
                  Spacer(),
                  // 2. Sapa Nama
                  Text(
                    "Hello Kukuh",
                    style: namaStyling,
                  ),
                  SizedBox(width: 8),
                  // 3. Photo Profile
                  CircleAvatar(
                    backgroundColor: putihCol,
                    radius: 25,
                    backgroundImage: AssetImage("assets/img/pp.png"),
                  ),
                ],
              ),
              SizedBox(height: 19),
              // 2. Search Bar
              Container(
                width: 340,
                height: 41,
                padding: EdgeInsets.only(left: 20, right: 20),
                color: putihCol,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 1. Text
                    Text(
                      "Try \"Hawai\"",
                      style: namaStyling.copyWith(color: greyCol),
                    ),
                    // 2. Icon Search
                    Icon(Icons.search_rounded, size: 20, color: blackCol),
                  ],
                ),
              ),
              SizedBox(height: 19),
              // 3. ListView Gambar Wisata Kota
              Row(
                children: [
                  Image.asset("assets/img/maldives.png",
                      width: 100, height: 125),
                  Image.asset("assets/img/bali.png", width: 120, height: 155),
                  Image.asset("assets/img/hawai.png", width: 100, height: 125),
                ],
              ),
              // 4. ListTile
            ],
          ),
        ),
      ),
    );
  }
}
