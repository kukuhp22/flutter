import 'package:flutter/material.dart';
import 'package:house_marketplace/utils/constants.dart';
import 'package:house_marketplace/utils/widget_function.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton(
      {Key? key, this.text = '', required this.icon, this.width = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
        // minWidth: width,
        color: COLOR_DARK_BLUE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        onPressed: () {},
        splashColor: COLOR_GREY.withAlpha(55),
        child: Row(
          children: [
            Icon(
              icon,
              color: COLOR_WHITE,
            ),
            addHorizontalSpace(10),
            Text(
              text,
              style: TextStyle(
                color: COLOR_WHITE,
              ),
            )
          ],
        ),
      ),
    );
  }
}
