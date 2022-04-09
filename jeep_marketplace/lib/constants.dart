import 'package:flutter/material.dart';

Color warnaUtama = Color(0xFF31333A);
Color agakPutih = Color(0xFFFAFAFA);
Color putih = Colors.white;

TextStyle judul = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w700,
  color: agakPutih,
);

TextStyle subJudul = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: agakPutih,
);

TextStyle choosJeep = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: agakPutih,
);

TextStyle namaMob = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: agakPutih,
);

TextStyle palingKecil = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: agakPutih,
);

TextStyle totalHarga = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: Color(0xFF1B1B1B),
);

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
