import 'package:cats/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'exploration_clipper.dart';

class ExplorationClipPath extends StatelessWidget {
  const ExplorationClipPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ExplorationClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.7,
        decoration: BoxDecoration(
          gradient: Constants.backgroundGradient
        ),
      ),
    );
  }
}
