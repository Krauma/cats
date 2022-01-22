import 'package:cats/Search/Models/cat_search_result.dart';
import 'package:cats/Services/api_service.dart';
import 'package:get/state_manager.dart';

class SearchController extends GetxController {
  var isLoading = true.obs;
  var fetchedCats = List<CatSearchResult>.empty().obs;
  var catImage = "".obs;

  void search(String searchString) async {
    try {
      isLoading(true);
      var cats = await ApiService.search(searchString);
      if (cats != null) {
        fetchedCats.value = cats;
      } else {
        fetchedCats.clear();
      }
    } finally {
      isLoading(false);
    }
  }
}
