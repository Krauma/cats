import 'package:cats/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'shared_clipper.dart';

class SharedClipPath extends StatelessWidget {
  const SharedClipPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SharedClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.7,
        decoration: BoxDecoration(
          gradient: Constants.backgroundGradient
        ),
      ),
    );
  }
}
