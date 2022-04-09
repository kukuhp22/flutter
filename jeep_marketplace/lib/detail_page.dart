import 'package:flutter/material.dart';
import 'package:jeep_marketplace/check_out.dart';
import 'package:jeep_marketplace/constants.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({Key? key}) : super(key: key);

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 425,
                    height: 408,
                    color: warnaUtama,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),

            // isi kontent
            Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // icon back to prev screen
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
                        shape: BoxShape.circle,
                        color: Color(0xFF43454C),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  addVerticalSpace(20),
                  // Text nama
                  Text("Wrangler GT", style: judul),
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
                  // Image utama
                  Image.asset("assets/img/jeep1.png"),
                  addVerticalSpace(28),
                  // Details Payment nyaa....
                  Container(
                    width: 335,
                    height: 240,
                    padding: EdgeInsets.only(top: 28, left: 28, right: 28),
                    decoration: BoxDecoration(
                      color: agakPutih,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // text biasa
                        Text(
                          "Detail Payment",
                          style: subJudul.copyWith(color: Color(0xFF1B1B1B)),
                        ),
                        addVerticalSpace(20),
                        // 1
                        Row(
                          children: [
                            // icon
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(0xFF27C499),
                            ),
                            addHorizontalSpace(12),
                            // text
                            Text(
                              "Engine service",
                              style: namaMob.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                            Spacer(),
                            // price
                            Text(
                              "\$ 200",
                              style: namaMob.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        addVerticalSpace(16),
                        // 2
                        Row(
                          children: [
                            // icon
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(0xFF27C499),
                            ),
                            addHorizontalSpace(12),
                            // text
                            Text(
                              "Oil Change, Coolant",
                              style: namaMob.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                            Spacer(),
                            // price
                            Text(
                              "\$ 200",
                              style: namaMob.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        addVerticalSpace(16),
                        // 3
                        Row(
                          children: [
                            // icon
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(0xFF27C499),
                            ),
                            addHorizontalSpace(12),
                            // text
                            Text(
                              "Balance steering wheel,\nball joint",
                              style: namaMob.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                            Spacer(),
                            // price
                            Text(
                              "\$ 800",
                              style: namaMob.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        addVerticalSpace(30),
                        // 4
                        Row(
                          children: [
                            // icon
                            // Icon(
                            //   Icons.radio_button_checked,
                            //   color: Color(0xFF27C499),
                            // ),

                            // text
                            Text(
                              "Total",
                              style: choosJeep.copyWith(
                                color: Color(0xFF1B1B1B).withOpacity(0.8),
                              ),
                            ),
                            Spacer(),
                            // price
                            Text("\$ 1,200", style: totalHarga),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(-0.1, 0.93),
              child: RaisedButton(
                color: Color(0xFF1b1b1b),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Checkout(),
                        ));
                  });
                },
                child: Text(
                  "CheckOut",
                  style: choosJeep,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
