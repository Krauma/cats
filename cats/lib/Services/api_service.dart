import 'dart:convert';

import 'package:cats/Exploration/Models/cat.dart';
import 'package:cats/Utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<Cat>?> fetchCats() async {
    var response = await client
        .get(Uri.parse('https://api.thecatapi.com/v1/images/search'),headers: {
          'x-api-key': Constants.apiKey,
        });
    if (response.statusCode == 200) {
     var jsonString = response.body;
      return catsFromJson(jsonString);
    } else {
      return null;
    }
  }
}
