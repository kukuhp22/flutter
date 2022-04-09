import 'package:flutter/material.dart';

import 'theme.dart';

class ChatDetail extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  const ChatDetail(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
          SizedBox(width: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: 180,
            decoration: BoxDecoration(
              color: Color(0xffEBEFF3),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: subtitleStyle),
                Text(
                  time,
                  style: subtitleStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
