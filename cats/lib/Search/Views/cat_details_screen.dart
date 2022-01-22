import 'package:cats/Search/Models/cat_detail_view_model.dart';
import 'package:cats/Search/Views/cat_details_top_part.dart';
import 'package:cats/Search/Views/fact_section.dart';
import 'package:cats/Utils/SharedViews/shared_clip_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatDetailsScreen extends StatelessWidget {
  final CatDetailViewModel viewModel;
  const CatDetailsScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SharedClipPath(
            height: MediaQuery.of(context).size.height / 3.3,
          ),
          SafeArea(
            child: Positioned(
                top: 12,
                left: 16,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close, color: Colors.white))),
          ),
          SafeArea(
            child: Align(
                alignment: Alignment.topCenter,
                child: CatDetailsTopPart(viewModel: viewModel)),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3.5,
              left: 16,
              right: 16,
              child: FactSection(viewModel: viewModel))
        ],
      ),
    );
  }
}
