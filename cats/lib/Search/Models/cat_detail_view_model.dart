import 'cat_search_result.dart';

class CatDetailViewModel {
  final CatSearchResult catSearchResult;

  CatDetailViewModel({required this.catSearchResult});

  String name() {
    if (catSearchResult.name == null) {
      return "The cat's name is unkown";
    }
    return catSearchResult.name!;
  }

  String origin() {
    if (catSearchResult.origin == null) {
      return "Unkown origin";
    }
    return "From: " + catSearchResult.origin!;
  }

  String description() {
    if (catSearchResult.description == null) {
      return "Unkown description";
    }
    return catSearchResult.description!;
  }

  String isRare() {
    if (catSearchResult.rare == null) {
      return "Unkown";
    }
    return catSearchResult.rare! == 0 ? "No" : "Yes";
  }

  String temperament() {
    if (catSearchResult.temperament == null) {
      return "Unkown temperament";
    }
    return catSearchResult.temperament!;
  }

  String isHairless() {
    if (catSearchResult.hairless == null) {
      return "Unkown";
    }
    return catSearchResult.hairless! == 0 ? "No" : "Yes";
  }

    String intelligence() {
    if (catSearchResult.intelligence == null) {
      return "Unkown intelligence";
    }
    return catSearchResult.intelligence!.toString();
  }

}
