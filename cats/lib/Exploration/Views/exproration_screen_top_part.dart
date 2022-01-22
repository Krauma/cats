import 'package:cats/Exploration/Controllers/exploration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cat_container.dart';

class ExplorationSreenTopPart extends StatelessWidget {
  final ExplorationController explorationController;
  const ExplorationSreenTopPart({Key? key, required this.explorationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: Get.back,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
              Text('Explore kittens',
                  style: GoogleFonts.outfit(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          CatContailer(explorationController: explorationController),
        ],
      ),
    ));
  }
}
