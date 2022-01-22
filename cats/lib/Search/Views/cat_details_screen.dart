import 'package:cats/Search/Models/cat_search_result.dart';
import 'package:cats/Utils/SharedViews/shared_clip_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CatDetailsScreen extends StatelessWidget {
  final CatSearchResult cat;
  const CatDetailsScreen({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SharedClipPath(height: MediaQuery.of(context).size.height / 3.3,),
          SafeArea(
            child: Positioned( 
              top: 12,
              left: 16,
              child: IconButton(onPressed: () {
                Get.back();
              }, icon: const Icon(Icons.close, color: Colors.white))),
          ),
          SafeArea(
            
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text(cat.name!,
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w400)),
                      Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text('Fun facts about this particular breed',
                              style: GoogleFonts.outfit(
                                  color: Colors.white.withOpacity(.8)))),
              
                          
                    ],
                  )),
            ),
          ),
                Positioned(
                      top: MediaQuery.of(context).size.height / 3.5,
                      left: 16,
                      right: 16,
                      child: Column(
                        children: [
                          FactRow(fact: "Description", description: cat.description!),
                          FactRow(fact: "Is from", description: cat.origin!),
                          FactRow(fact: "Is rare", description: cat.rare.toString()),
                          FactRow(fact: "temperament", description: cat.temperament.toString()),
                          FactRow(fact: "Intelligence level", description: cat.intelligence.toString()),
                          FactRow(fact: "Is harless", description: cat.hairless.toString())
                        ],
                      ))
        ],
      ),
    );
  }
}

class FactRow extends StatelessWidget {
  final String fact;
  final String description;

  const FactRow({ Key? key, required this.fact, required this.description }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible( flex: 2, child: Text(fact, style: GoogleFonts.outfit(fontWeight: FontWeight.bold))),
          Flexible( flex: 4, child: Text(description, style: GoogleFonts.outfit())),
        ],
      ),
    );
  }
}

