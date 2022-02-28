import 'package:flutter/material.dart';

class CustomTextStyles {
  get exampleStyle {
    return TextStyle(
      fontSize: 40,
      color: Colors.white,
    );
  }

  // This function is used to merge list of styles together
  TextStyle mergeStyles(List<TextStyle> styles) {
    TextStyle mergeResult = TextStyle();
    styles.forEach((style) => mergeResult.merge(style));
    return mergeResult;
  }

  static TextStyle get scannerTextStyle {
    return TextStyle(
      fontSize: 20,
      color: Colors.white,
    );
  }
}
