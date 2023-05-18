// FONT WEIGHT
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:torin_app/utilities/font_size.dart';

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight bold = FontWeight.w700;
FontWeight semibold = FontWeight.w600;

class TextStyleCustom {
  TextStyleCustom._internalConstructor();

  static final TextStyleCustom _instance =
      TextStyleCustom._internalConstructor();

  factory TextStyleCustom() {
    return _instance;
  }
  static TextStyle superLarge = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeSuperLarge,
  );

  static TextStyle overLarge = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeOverLarge,
  );

  static TextStyle extraLarge = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeExtraLarge,
  );

  static TextStyle large = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeLarge,
  );

  static TextStyle regular = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeDefault,
  );

  static TextStyle button = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeDefault,
  );

  static TextStyle small = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeSmall,
  );

  static TextStyle extraSmall = GoogleFonts.nunito(
    fontSize: SizedFont.fontSizeExtraSmall,
  );
}
