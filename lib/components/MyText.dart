import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String txt;
  final double? size;
  final dynamic? fw;

  final Color? color;
  MyText({super.key, required this.txt, this.size, this.fw, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: size,
        fontWeight: fw,
        color: color,
      ),
    );
  }
}

TextStyle get buttonStyle {
  return GoogleFonts.tinos(
    textStyle: const TextStyle(
        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

Widget gyap(final double? hgyap, final double? wgyap) {
  return SizedBox(
    height: hgyap,
    width: wgyap,
  );
}

TextStyle get WhiteHeadStyle {
  return GoogleFonts.aBeeZee(
    textStyle: const TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

TextStyle get subHeadStyle {
  return GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

TextStyle get blacksubHeadStyle {
  return GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
  );
}

TextStyle get smallTexts {
  return GoogleFonts.lato(
    textStyle: const TextStyle(color: Colors.white),
  );
}

TextStyle get blacksmallTexts {
  return GoogleFonts.lato(
    textStyle: const TextStyle(color: Colors.black),
  );
}

TextStyle get BlckHeadStyle {
  return GoogleFonts.aBeeZee(
    textStyle: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  );
}

TextStyle get NameHed {
  return GoogleFonts.tinos(
    textStyle: const TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

TextStyle get dbtxt {
  return GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 12, color: Colors.grey),
  );
}
