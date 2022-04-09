import 'package:flutter/material.dart';

import '../theme.dart';
import 'detail_page.dart';

class JustPosted extends StatelessWidget {
  final String job;
  final String comp;
  final String logoUrl;

  JustPosted({this.job = '', this.comp = '', this.logoUrl = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. gambar
          Image.asset(
            logoUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(width: 27),
          // 2. Kolom isi namajob dan perusahaan
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Nama Job
                Text(
                  job,
                  style: jobTextStyle,
                ),
                // 2. Perusahaan
                Text(
                  comp,
                  style: companyTextStyle,
                ),
                SizedBox(height: 18),
                Divider(
                  color: Color(0xFFECEDF1),
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
