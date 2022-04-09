import 'package:car_marketplace/theme.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget kotakMobil() {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(),
              ));
        });
      },
      child: Container(
        width: 315,
        height: 200,
        padding: EdgeInsets.only(top: 15, left: 15),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Color(0xFFE4F0FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mazda 6 Turbocharged",
              style: namaMobil,
            ),
            Text(
              "2020 Sport Car",
              style: descMobil,
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/img/mobil1.png",
                  height: 150,
                  width: 280,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //mobil v2
  Widget kotakMobilv2(String name, String imgUrl) {
    return Container(
      width: 315,
      height: 110,
      padding: EdgeInsets.only(top: 10, left: 4),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color(0xFFE4F0FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            name,
            style: namaMobil,
          ),
          // Text(
          //   "Toyota",
          //   style: descMobil,
          // ),
          Row(
            children: [
              Image.asset(imgUrl, width: 162, height: 52),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // start of bottomnavBar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Save",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        elevation: 5,
        selectedItemColor: biruTitle,
        unselectedItemColor: greyTipe,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: hitam,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          // color: Color(0xFFC7C7C7),
        ),
        showUnselectedLabels: true,
      ),
      // end of bottomnavBar..

      // Mulai Isi Content
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "Find the\nfor you",
                        style: judul,
                      ),
                      SizedBox(width: 4),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text(
                          "Perfect Vehicles",
                          style: judulWarna,
                        ),
                      ),
                    ],
                  ),
                ),
                // end of title
                SizedBox(height: 20),
                // group search
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      // Search Bar
                      Container(
                        width: 256,
                        height: 50,
                        padding: EdgeInsets.only(left: 17),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 25,
                              color: Color(0xFF839FB5),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Search",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFC7C7C7),
                              ),
                            )
                          ],
                        ),
                      ),
                      //end of Search Bar
                      SizedBox(width: 20),
                      //Icon Filter
                      Container(
                        width: 53,
                        height: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF4B7BFA),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.filter_alt),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      // end of Icon Filter
                    ],
                  ),
                ),
                // end of group search
                SizedBox(height: 12),
                // konten utama
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.only(left: 15, top: 46),
                  color: bgCol,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // jenis mobil
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "All",
                            style: tipeMobSelect,
                          ),
                          Text(
                            "Sedan",
                            style: tipeMobil,
                          ),
                          Text(
                            "Sport",
                            style: tipeMobil,
                          ),
                          Text(
                            "Coupe",
                            style: tipeMobil,
                          ),
                          Text(
                            "HatchBack",
                            style: tipeMobil,
                          ),
                        ],
                      ),
                      // end of jenis mobil
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 30),
                        width: 315,
                        height: 434,
                        // color: Colors.blue,
                        child: ListView(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Popular Vehicle",
                              style: titlePop,
                            ),
                            // Gambar Mobil
                            kotakMobil(),
                            kotakMobilv2("Corolla Specs\nToyota",
                                "assets/img/mobil2.png"),
                            kotakMobilv2("Kia Australia\nCerrato",
                                "assets/img/mobil3.png"),
                            kotakMobil(),
                            kotakMobilv2("Corolla Specs\nToyota",
                                "assets/img/mobil2.png"),
                            // end of Gambar Mobil
                          ],
                        ),
                      ),

                      //text
                    ],
                  ),
                ),
                // end of konten utama
              ],
            ),
          ),
        ),
      ),
    );
  }
}
