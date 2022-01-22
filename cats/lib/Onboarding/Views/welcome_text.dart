import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height / 3,
        left: 0,
        right: 0,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 4,
          children: [
            Text(
              'Explore cats',
              style: GoogleFonts.outfit(color: Colors.white, fontSize: 36),
            ),
            Text('Play around and find some cute cats!',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.italic))
          ],
        ));
  }
}
