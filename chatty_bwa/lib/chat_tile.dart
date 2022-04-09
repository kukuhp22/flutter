import 'package:flutter/material.dart';

import 'theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(imageUrl, height: 55, width: 55),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleStyle),
              Text(
                text,
                style: unread
                    ? subtitleStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleStyle,
              ),
            ],
          ),
          Spacer(),
          Text(time, style: subtitleStyle),
        ],
      ),
    );
  }
}
