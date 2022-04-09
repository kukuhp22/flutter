import 'package:flutter/material.dart';
import 'package:house_marketplace/utils/constants.dart';

import 'package:house_marketplace/utils/sample_data.dart';
import 'package:house_marketplace/utils/widget_function.dart';
import '../utils/custom_function.dart';

class DetailScreen extends StatefulWidget {
  final dynamic itemData;

  const DetailScreen({Key? key, this.itemData}) : super(key: key);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img/rumah2.jpg",
              width: size.width,
            ),
            // start of deskripsi
            Container(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // pricing
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$200,000",
                        style: themeData.textTheme.headline1,
                      ),
                      Text(
                        "Jl. Ahmad Yani no 15 , SMG",
                        style: themeData.textTheme.bodyText2,
                      ),
                    ],
                  ),

                  // waktu posting
                  Container(
                    width: 100,
                    height: 40,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: COLOR_WHITE,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: COLOR_GREY.withAlpha(40),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "20 Hours ago",
                        style: themeData.textTheme.headline6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // end of deskripsi
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "House Information",
                style: themeData.textTheme.headline4,
              ),
            ),
            addVerticalSpace(20),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  "1416",
                  "4",
                  "2",
                  "1",
                ]
                    .map((filter) => fiturRumah(
                          text: filter,
                          text2: 'Square Foot',
                        ))
                    .toList(),
              ),
            ),
            addVerticalSpace(20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Lorem ipsum is simply dummy text of the priting and typesetting industry. Lorem Ipsum has been the industry's standart dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining accenly unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: themeData.textTheme.bodyText2,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class fiturRumah extends StatelessWidget {
  final String text, text2;

  const fiturRumah({Key? key, required this.text, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: COLOR_WHITE.withAlpha(25),
              border: Border.all(color: COLOR_GREY.withAlpha(40))),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          margin: EdgeInsets.only(left: 25),
          child: Center(
            child: Text(
              text,
              style: themeData.textTheme.headline4,
            ),
          ),
        ),
        addVerticalSpace(10),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            text2,
            style: themeData.textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
