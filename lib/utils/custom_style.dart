import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget getText(String? text,
    {Color? colors,
    FontWeight? fontWeight,
    double? fontSize,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign}) {
  return Text(
    '${text}',
    maxLines: maxLines ?? 1,
    textAlign: textAlign ?? TextAlign.center,
    style: GoogleFonts.mulish(
        locale: const Locale("tr"),
        textStyle: TextStyle(
          overflow: overflow ?? TextOverflow.ellipsis,
          color: colors ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontSize ?? 15,
        )),
  );
}

Widget getTextPoppins(String? text,
    {Color? colors,
      FontWeight? fontWeight,
      double? fontSize,
      int? maxLines,
      TextOverflow? overflow,
      TextAlign? textAlign}) {
  return Text(
    '${text}',
    maxLines: maxLines ?? 1,
    textAlign: textAlign ?? TextAlign.center,
    style: GoogleFonts.poppins(
        locale: const Locale("tr"),
        textStyle: TextStyle(
          overflow: overflow ?? TextOverflow.ellipsis,
          color: colors ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontSize ?? 15,
        )),
  );
}
