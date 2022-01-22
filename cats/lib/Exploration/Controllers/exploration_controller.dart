import 'package:cats/Exploration/Models/cat.dart';
import 'package:cats/Exploration/Models/cat_vote.dart';
import 'package:cats/Services/api_service.dart';
import 'package:get/state_manager.dart';

class ExplorationController extends GetxController {
  var isLoading = true.obs;
  var fetchedCats = List<Cat>.empty().obs;

  @override
  void onInit() {
    fetchCat();
    super.onInit();
  }

  void fetchCat() async {
    try {
      isLoading(true);
      var cats = await ApiService.fetchCats();
      if (cats != null) {
        fetchedCats.value = cats;
      }
    } finally {
      isLoading(false);
    }
  }

  Future<int> voteCat(CatVote catVote) async {
    try {
      isLoading(true);
      var response = await ApiService.voteCat(catVote);
      return response;
    } finally {
      isLoading(false);
    }
  }
}
