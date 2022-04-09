import 'package:flutter/material.dart';
import 'package:jeep_marketplace/constants.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // denah lokasi bengkel...
            Container(
                margin: EdgeInsets.all(10),
                child: Image.asset("assets/img/lokasi.png")),
            // isi kontent
            Container(
              margin: EdgeInsets.only(left: 28, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // icon
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Color(0xFF43454C),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  // text
                  Text(
                    "Find Workshop",
                    style: choosJeep.copyWith(
                      color: Color(0xFF1B1B1B),
                    ),
                  ),
                  addVerticalSpace(8),
                  // Card
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        // Bengkel 1
                        optionBengkel(
                          imgUrl: 'assets/img/bengkel1.png',
                          alamat: 'Pajang Road 21, Jkt',
                          namaBengkel: 'Rev\nEngineering',
                        ),
                        addHorizontalSpace(20),
                        // Bengkel 2
                        optionBengkel(
                          imgUrl: 'assets/img/bengkel2.png',
                          alamat: 'Road 55 Unter, Pwkt',
                          namaBengkel: 'Psycho Engine\nPurworkerto',
                        ),
                        addHorizontalSpace(20),
                        // Bengkel 3
                        optionBengkel(
                          imgUrl: 'assets/img/bengkel1.png',
                          alamat: 'Pajang Road 21, Jkt',
                          namaBengkel: 'Rev\nEngineering',
                        ),
                        addHorizontalSpace(20),
                        // Bengkel 4
                        optionBengkel(
                          imgUrl: 'assets/img/bengkel2.png',
                          alamat: 'Pajang Road 21, Jkt',
                          namaBengkel: 'Rev\nEngineering',
                        ),
                        addHorizontalSpace(20),
                        // Bengkel 5
                        optionBengkel(
                          imgUrl: 'assets/img/bengkel1.png',
                          alamat: 'Pajang Road 21, Jkt',
                          namaBengkel: 'Rev\nEngineering',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class optionBengkel extends StatefulWidget {
  String imgUrl;
  String alamat;
  String namaBengkel;

  optionBengkel({
    Key? key,
    required this.imgUrl,
    required this.alamat,
    required this.namaBengkel,
  }) : super(key: key);

  @override
  State<optionBengkel> createState() => _optionBengkelState();
}

class _optionBengkelState extends State<optionBengkel> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // setState(() {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => Detailpage(),
        //       ));
        // });
      },
      child: Container(
        width: 140,
        height: 226,
        decoration: BoxDecoration(
          color: Color(0xFF808080).withOpacity(0.05),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.imgUrl, width: 120, height: 120),
            addVerticalSpace(10),
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.alamat,
                style: palingKecil.copyWith(
                  color: Color(0xFF1B1B1B).withOpacity(0.8),
                ),
              ),
            ),
            addVerticalSpace(4),
            Text(widget.namaBengkel,
                style: namaMob.copyWith(color: Color(0xFF1B1B1B))),
          ],
        ),
      ),
    );
  }
}
