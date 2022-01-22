import 'package:cats/Search/Models/cat_list_view_model.dart';
import 'package:cats/Search/Views/cat_details_screen.dart';
import 'package:cats/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CatCard extends StatelessWidget {
  final CatListViewModel viewModel;
  const CatCard({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => CatDetailsScreen(cat: viewModel.catSearchResult));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Constants.pinkButtonColor.withOpacity(.7),
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
                    Text(
                      viewModel.catName(),
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(viewModel.origin(),
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
      ),
    );
  }
}
