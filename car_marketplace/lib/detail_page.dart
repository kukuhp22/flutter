import 'package:car_marketplace/theme.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int _selectedIndex = 2;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget cardFitur(String jenis, String desc) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFE4F0FF),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(
            Icons.lock,
            size: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jenis,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF323232),
              ),
            ),
            SizedBox(height: 4),
            Text(
              desc,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF0E0E1A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget optionWarna() {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: Row(
        children: [
          // warna merah
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFCF474C),
            ),
          ),
          SizedBox(width: 12),
          // warna hitam
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF221C1C),
            ),
          ),
          SizedBox(width: 12),
          // warna ungu
          Container(
            width: 36,
            height: 36,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFF6055E7)),
          )
        ],
      ),
    );
  }

  Widget buttonCheckOut() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        height: 55,
        width: 315,
        decoration: BoxDecoration(
          color: biruTitle,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Book Now",
              style: titlePop.copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 6),
            Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 26),
                    child: Image.asset(
                      "assets/img/mobilfix.png",
                    ),
                  ),
                  // icon
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  // end of icon
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  "Mazda 6 Turbocharged\nSport Sedan",
                  style: nameMobilDet,
                ),
              ),
              // end of product

              // harga
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                padding: EdgeInsets.only(left: 16),
                width: 315,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF6FAFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price starts from",
                      style: tipeMobil,
                    ),
                    Container(
                      width: 110,
                      height: 30,
                      padding: EdgeInsets.only(
                          left: 18, top: 5, bottom: 5, right: 17),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      child: Text(
                        "\$78,905",
                        style: nameMobilDet,
                      ),
                    ),
                  ],
                ),
              ),
              // end of harga

              // fitur
              Container(
                width: 298,
                height: 150,
                margin: EdgeInsets.only(left: 30, top: 30),
                // color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Main Freature",
                      style: titlePop.copyWith(color: Color(0xFF0E0E1A)),
                    ),
                    SizedBox(height: 10),
                    // card
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cardFitur("Security", "Smart Lock"),
                        cardFitur("Speed", "194 km/h"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cardFitur("Engine", "2,5L 4-Silinder"),
                        cardFitur("Seats", "4 People"),
                      ],
                    ),

                    //end of card
                  ],
                ),
              ),
              // end of fitur
              SizedBox(height: 30),

              // option warna
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  "Select Color",
                  style: titlePop.copyWith(color: Color(0xFF0E0E1A)),
                ),
              ),
              SizedBox(height: 12),
              optionWarna(),
              // end of warna

              // button
              _selectedIndex == -1 ? SizedBox() : buttonCheckOut(),
              SizedBox(height: 20),
              // end of button
            ],
          ),
        ),
      ),
    );
  }
}
