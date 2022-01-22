import 'dart:convert';
import 'package:cats/Exploration/Models/cat.dart';
import 'package:cats/Exploration/Models/cat_vote.dart';
import 'package:cats/Search/Models/cat_search_result.dart';
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
    var catDictionary = catVote.toJson();
    var body = jsonEncode(catDictionary);

    var response = await client.post(Uri.parse(Constants.baseUrl + '/votes'),
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': Constants.apiKey,
        },
        body: body);
    return response.statusCode;
  }

  static Future<List<CatSearchResult>?> search(String searchString) async {
    var response = await client.get(
        Uri.parse(Constants.baseUrl + '/breeds/search?q=' + searchString),
        headers: {
          'x-api-key': Constants.apiKey,
        });
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return searchedCatsFromJson(jsonString);
    } else {
      return null;
    }
  }
}
