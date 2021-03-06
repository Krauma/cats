import 'package:cats/Exploration/Controllers/exploration_controller.dart';
import 'package:cats/Exploration/Views/exploration_screen_bottom_part.dart';
import 'package:cats/Utils/SharedViews/shared_clip_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'exproration_screen_top_part.dart';

class ExplorationScreen extends StatelessWidget {
  ExplorationScreen({Key? key}) : super(key: key);

  final ExplorationController explorationController =
      Get.put(ExplorationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          const SharedClipPath(),
          ExplorationSreenTopPart(explorationController: explorationController),
          ExplorationScreenBottomPart(
              explorationController: explorationController)
        ],
      ),
    );
  }
}
