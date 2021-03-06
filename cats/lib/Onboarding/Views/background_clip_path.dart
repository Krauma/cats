import 'package:cats/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'background_clipper.dart';

class BackgroundClipPath extends StatelessWidget {
  const BackgroundClipPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 1.35,
        decoration: BoxDecoration(
          gradient: Constants.backgroundGradient
        ),
      ),
    );
  }
}
