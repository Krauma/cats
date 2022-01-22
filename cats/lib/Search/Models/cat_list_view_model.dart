import 'package:cats/Search/Models/cat_search_result.dart';

class CatListViewModel {
  CatSearchResult catSearchResult;

  CatListViewModel({required this.catSearchResult});

  String catName() {
    if (catSearchResult.name == null) {
      return "The cat's name is unkown";
    }
    return catSearchResult.name!;
  }

  String origin() {
    if (catSearchResult.origin == null) {
      return "unkown origin";
    }
    return "From: " + catSearchResult.origin!;
  }
}
