import 'dart:convert';

import 'package:cats/Exploration/Models/cat.dart';
import 'package:cats/Utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<Cat?> fetchProducts() async {
    var response = await client
        .get(Uri.parse('https://api.thecatapi.com/v1/images/search'),headers: {
          'x-api-key': Constants.apiKey,
        });
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return Cat.fromJson(json);
    } else {
      return null;
    }
  }
}
