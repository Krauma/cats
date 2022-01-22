import 'package:cats/Search/Models/cat_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatDetailsTopPart extends StatelessWidget {
  final CatDetailViewModel viewModel;
  const CatDetailsTopPart({Key? key, required this.viewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(viewModel.name(),
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400)),
            Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('Fun facts about this particular breed',
                    style: GoogleFonts.outfit(
                        color: Colors.white.withOpacity(.8)))),
          ],
        ));
  }
}
