import 'package:get/state_manager.dart';

class ExplorationController extends GetxController {
  var isLoading = true.obs;
  //var productList = List<Product>.empty().obs;

  @override
  void onInit() {
    fetchCat();
    super.onInit();
  }

  void fetchCat() async {
    //try {
      //isLoading(true);
    //  var products = await ApiService.fetchProducts();
      //if (products != null) {
        //productList.value = products;
      //}
    //} finally {
     // isLoading(false);
    //}
  }
}