import 'dart:convert';

import 'package:cats/Exploration/Models/cat.dart';
import 'package:cats/Exploration/Models/cat_vote.dart';
import 'package:cats/Utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<Cat>?> fetchCats() async {
    var response = await client
        .get(Uri.parse(Constants.baseUrl + '/images/search'), headers: {
      'x-api-key': Constants.apiKey,
    });
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return catsFromJson(jsonString);
    } else {
      return null;
    }
  }

  static Future<int> voteCat(CatVote catVote) async {
    var json = catVote.toJson();

    var response = await client.post(Uri.parse(Constants.baseUrl + '/votes'),
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': Constants.apiKey,
        },
        body: json);
    return response.statusCode;
  }
}
