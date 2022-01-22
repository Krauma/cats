import 'package:cats/Search/Controllers/search_controller.dart';
import 'package:cats/Search/Models/cat_list_view_model.dart';
import 'package:cats/Search/Views/cat_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CatList extends StatelessWidget {
  final SearchController searchController;
  const CatList({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (searchController.fetchedCats.isEmpty) {
        return Center(
          child: Text('No cats found',
              style: GoogleFonts.outfit(
                  fontSize: 24, fontWeight: FontWeight.bold)),
        );
      }
      return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: searchController.fetchedCats.length,
              itemBuilder: (BuildContext ctx, index) {
                return CatCard(
                    viewModel: CatListViewModel(
                        catSearchResult: searchController.fetchedCats[index]));
              }),
        ),
      );
    });
  }
}
