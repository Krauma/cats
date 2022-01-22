import 'package:cats/Exploration/Controllers/exploration_controller.dart';
import 'package:cats/Exploration/Views/vote_conformation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorationScreenBottomPart extends StatelessWidget {
  final ExplorationController explorationController;
  const ExplorationScreenBottomPart(
      {Key? key, required this.explorationController})
      : super(key: key);

  final _animationDuration = const Duration(milliseconds: 900);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: _animationDuration,
      alignment: Alignment.bottomCenter,
      child: Obx(() {
        if (explorationController.isShowingConfirmation.value) {
          return VoteConfirmation(explorationController: explorationController);
        }
        return Padding(
          padding: const EdgeInsets.only(bottom: 34, top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  explorationController.handleVoteClick(
                      false, explorationController.fetchedCats.first.id);
                },
                child: const Icon(Icons.close, color: Colors.red),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  primary: Colors.grey[100],
                  onPrimary: Colors.red,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  explorationController.handleVoteClick(
                      true, explorationController.fetchedCats.first.id);
                },
                child: const Icon(Icons.favorite, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  primary: Colors.orange,
                  onPrimary: Colors.red,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
