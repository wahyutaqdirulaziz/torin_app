import 'package:flutter/material.dart';

class ColorConstant {
  ColorConstant._internalConstructor();

  static final ColorConstant _instance = ColorConstant._internalConstructor();

  factory ColorConstant() {
    return _instance;
  }

  static const Color kPrimaryColor = Color(0xFFED1846);
  static const Color kBlackColor = Color(0xFF444444);
  static const Color kYellowColor = Color(0xffFACC15);
  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kGreyColor = Color(0xFFC4C4C4);
  static const Color kTransparentColor = Colors.transparent;
}
