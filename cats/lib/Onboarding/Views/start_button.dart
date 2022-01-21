import 'package:cats/Exploration/Views/exploration_screen.dart';
import 'package:cats/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class StartButton extends StatelessWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 64),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
            child: const Text("Show cats!"),
            onPressed: () {
              Get.to(() => const ExplorationScreen());
            },
            style: ElevatedButton.styleFrom(
                elevation: 7,
                primary: Constants.pinkButtonColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                textStyle: GoogleFonts.outfit(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
      ),
    );
  }
}
