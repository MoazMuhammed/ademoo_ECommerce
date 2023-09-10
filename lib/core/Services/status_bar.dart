import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: color,
    statusBarIconBrightness: Brightness.light, // You can set this to Brightness.dark for dark icons on a light background
  ));
}
