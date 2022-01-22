import 'package:cats/Search/Controllers/search_controller.dart';
import 'package:cats/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
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
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Constants.pinkButtonColor
                          .withOpacity(.7), //Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //TODO: Viewmodel
                              Text(
                                searchController.fetchedCats[index].name!,
                                style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                    'From ' +
                                        searchController
                                            .fetchedCats[index].origin!,
                                    style: GoogleFonts.outfit(
                                        color: Colors.white.withOpacity(.7))),
                              )
                            ],
                          ),
                          const Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      );
    });
  }
}
