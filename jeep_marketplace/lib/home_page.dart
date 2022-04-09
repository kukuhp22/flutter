import 'package:flutter/material.dart';
import 'package:jeep_marketplace/constants.dart';

import 'detail_page.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF31333A),
        body: Container(
          padding: EdgeInsets.only(top: 30, left: 28, right: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 2 icon paling atas pojok kanan kiri
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // icon search
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF43454C),
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                  ),
                  // icon setting
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF43454C),
                    ),
                    child: Icon(
                      Icons.settings_sharp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              addVerticalSpace(20),
              // Nama mobil dan Type nya
              Text(
                "Wrangler GT",
                style: judul,
              ),
              addVerticalSpace(12),
              Row(
                children: [
                  // Jeep
                  Container(
                    width: 52,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Color(0xFF43454C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Jeep",
                        style: namaMob,
                      ),
                    ),
                  ),
                  addHorizontalSpace(12),
                  // Turbo
                  Container(
                    width: 52,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Color(0xFF43454C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Turbo",
                        style: namaMob,
                      ),
                    ),
                  ),
                ],
              ),
              addVerticalSpace(36),
              // gambar utama
              Center(
                child: Image.asset(
                  "assets/img/gambarUtama.png",
                  width: 272,
                  height: 207,
                ),
              ),
              addVerticalSpace(30),
              // Fitur
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Healthy
                  Column(
                    children: [
                      Text(
                        "Healthy",
                        style: palingKecil,
                      ),
                      addVerticalSpace(12),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color(0xFF31333A),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Color(0xFFF0F0F0).withOpacity(0.1),
                            width: 2,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "85 %",
                          style: subJudul,
                        )),
                      ),
                    ],
                  ),
                  // Kilometer
                  Column(
                    children: [
                      Text(
                        "Kilometer",
                        style: palingKecil,
                      ),
                      addVerticalSpace(12),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color(0xFF31333A),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Color(0xFFF0F0F0).withOpacity(0.1),
                            width: 2,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "17.5K",
                          style: subJudul,
                        )),
                      ),
                    ],
                  ),
                  // Estimasi
                  Column(
                    children: [
                      Text(
                        "Estimasi",
                        style: palingKecil,
                      ),
                      addVerticalSpace(12),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color(0xFF31333A),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Color(0xFFF0F0F0).withOpacity(0.1),
                            width: 2,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "\$ 1.2K",
                          style: subJudul,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
              addVerticalSpace(30),

              // Text Pilihan jeep
              Text(
                "Choose Your Car",
                style: choosJeep,
              ),
              addVerticalSpace(20),
              // option jeep
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    // Mobil 1
                    optionMobil(
                      imgUrl: 'assets/img/jeep1.png',
                      namaMobil: 'Robicon',
                      tipeMobil: 'GT-S',
                    ),
                    addHorizontalSpace(20),
                    // Mobil 2
                    optionMobil(
                      imgUrl: 'assets/img/sedan.png',
                      namaMobil: 'BMW M2',
                      tipeMobil: 'Coupe',
                    ),
                    addHorizontalSpace(20),
                    // Mobil 3
                    optionMobil(
                      imgUrl: 'assets/img/jeep1.png',
                      namaMobil: 'Sedan Top',
                      tipeMobil: 'Gamal',
                    ),
                    addHorizontalSpace(20),
                    // Mobil 4
                    optionMobil(
                      imgUrl: 'assets/img/sedan.png',
                      namaMobil: 'Robocop',
                      tipeMobil: 'GT-N',
                    ),
                    addHorizontalSpace(20),
                    // Mobil 5
                    optionMobil(
                      imgUrl: 'assets/img/jeep1.png',
                      namaMobil: 'Robocop',
                      tipeMobil: 'GT-N',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class optionMobil extends StatefulWidget {
  String imgUrl;
  String namaMobil;
  String tipeMobil;

  optionMobil({
    Key? key,
    required this.imgUrl,
    required this.namaMobil,
    required this.tipeMobil,
  }) : super(key: key);

  @override
  State<optionMobil> createState() => _optionMobilState();
}

class _optionMobilState extends State<optionMobil> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detailpage(),
              ));
        });
      },
      child: Container(
        width: 140,
        height: 162,
        decoration: BoxDecoration(
          color: Color(0xFF808080).withOpacity(0.05),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.imgUrl, width: 116, height: 75),
            addVerticalSpace(10),
            Text(widget.namaMobil, style: namaMob),
            addVerticalSpace(4),
            Text(widget.tipeMobil, style: namaMob),
          ],
        ),
      ),
    );
  }
}
