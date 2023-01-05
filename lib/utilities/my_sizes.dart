import 'package:flutter/material.dart';

class MySizes{
  static double getMqWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
  }

  static double getMqHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
  }
}
