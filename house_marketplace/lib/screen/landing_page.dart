import 'package:flutter/material.dart';
import 'package:house_marketplace/custom/border_box.dart';
import 'package:house_marketplace/custom/option_button.dart';
import 'package:house_marketplace/screen/detail_page.dart';
import 'package:house_marketplace/utils/constants.dart';
import 'package:house_marketplace/utils/custom_function.dart';
import 'package:house_marketplace/utils/sample_data.dart';
import 'package:house_marketplace/utils/widget_function.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          // stack adalah widget untuk menumpuk/layering
          child: Stack(
            children: [
              // start content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon menu & setting
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BorderBox(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                        BorderBox(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.settings,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // end of Icon menu & setting
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "San Francisco",
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  // garis bawah
                  Padding(
                    padding: sidePadding,
                    child: Divider(
                      height: 25,
                      color: COLOR_GREY,
                    ),
                  ),
                  // end of garis bawah.
                  addVerticalSpace(10),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ">\$220,000",
                        "For Sale",
                        "3-4 Beds",
                        ">1000 sqft",
                      ].map((filter) => ChoiceOption(text: filter)).toList(),
                    ),
                  ),
                  addVerticalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: EX_DATA.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: EX_DATA[index],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              // end of content

              // Tombol Button
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map_rounded,
                    text: "Map View",
                    width: size.width * 0.37,
                  ),
                ),
              ),
              // end of tombol button.
            ],
          ),
        ),
      ),
    );
  }
}

// template untuk pilihan filtering...
class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: COLOR_GREY.withAlpha(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

// template untuk konten utama berupa produk rumah...
class RealEstateItem extends StatefulWidget {
  final dynamic itemData;

  const RealEstateItem({Key? key, this.itemData}) : super(key: key);

  @override
  State<RealEstateItem> createState() => _RealEstateItemState();
}

class _RealEstateItemState extends State<RealEstateItem> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailScreen()));
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(widget.itemData['image'])),
                Positioned(
                  top: 15,
                  right: 15,
                  child: BorderBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.favorite_border,
                      color: COLOR_BLACK,
                    ),
                  ),
                ),
              ],
            ),
            addVerticalSpace(15),
            // Deskripsi
            Row(
              children: [
                Text(
                  "${formatCurrency(widget.itemData['amount'])}",
                  style: themeData.textTheme.headline1,
                ),
                addHorizontalSpace(10),
                Text(
                  "${widget.itemData["address"]}",
                  style: themeData.textTheme.bodyText2,
                ),
              ],
            ),
            // end of Deskripsi
            Text(
              "${widget.itemData["bedrooms"]} bedrooms / ${widget.itemData["bathrooms"]} bathrooms",
              style: themeData.textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
