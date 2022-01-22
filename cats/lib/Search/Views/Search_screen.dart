import 'package:cats/Search/Controllers/search_controller.dart';
import 'package:cats/Search/Views/cat_list.dart';
import 'package:cats/Search/Views/search_screen_top_part.dart';
import 'package:cats/Utils/SharedViews/shared_clip_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final SearchController searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                top: 180,
                bottom: 20,
                left: 16,
                right: 16,
                child: CatList(searchController: searchController)),
            const SharedClipPath(),
            SearchScreenTopPart(searchController: searchController)
          ],
        ),
      ),
    );
  }
}
