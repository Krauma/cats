import 'package:flutter/material.dart';

class Constants {
  static Color pinkButtonColor = const Color.fromRGBO(254, 105, 181, 1);
  static String apiKey = "5d6ccfb8-ea38-4383-affa-849818e63ff7";
  static LinearGradient backgroundGradient = const LinearGradient(
      colors: [Colors.orange, Colors.red],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter);
  static String baseUrl = 'https://api.thecatapi.com/v1';
}
