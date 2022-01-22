import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FactRow extends StatelessWidget {
  final String fact;
  final String description;

  const FactRow({Key? key, required this.fact, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              flex: 2,
              child: Text(fact,
                  style: GoogleFonts.outfit(fontWeight: FontWeight.bold))),
          Flexible(
              flex: 4, child: Text(description, style: GoogleFonts.outfit())),
        ],
      ),
    );
  }
}
