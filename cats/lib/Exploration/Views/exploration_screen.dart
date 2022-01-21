import 'dart:async';

import 'package:cats/Exploration/Controllers/exploration_controller.dart';
import 'package:cats/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exploration_clip_path.dart';

class ExplorationScreen extends StatefulWidget {
  const ExplorationScreen({Key? key}) : super(key: key);

  @override
  _ExplorationScreenState createState() => _ExplorationScreenState();
}

class _ExplorationScreenState extends State<ExplorationScreen> {
  final ExplorationController explorationController =
      Get.put(ExplorationController());

  final _animationDuration = Duration(milliseconds: 900);
  var _isShowingConfirmation = false;
  var _isFavorite = false;

  Widget confirmation() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 64),
      child: Container(
          width: 300,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.orange,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(_isFavorite ? 'Cute cat alert' : 'Ugly cat detected!',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400)),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          const ExplorationClipPath(),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Explore kittens',
                    style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w400)),
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 34, 4, 20),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Obx(() {
                      if (explorationController.isLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        if (explorationController.fetchedCats.isNotEmpty) {
                          return Image.network(
                            explorationController.fetchedCats.first.url,
                            fit: BoxFit.cover,
                          );
                        }
                        return const Center(
                            child: Text('There are no kittens to display :(',
                                style: TextStyle(fontSize: 18)));
                      }
                    }),
                  ),
                ),
              ],
            ),
          )),
          AnimatedContainer(
            duration: _animationDuration,
            alignment: Alignment.bottomCenter,
            child: _isShowingConfirmation
                ? confirmation()
                : Padding(
                    padding: const EdgeInsets.only(bottom: 34, top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            handleButtonClick(false);
                          },
                          child: Icon(Icons.close, color: Colors.red),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.grey[100],
                            onPrimary: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            handleButtonClick(true);
                          },
                          child: Icon(Icons.favorite, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Colors.orange,
                            onPrimary: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }

  void handleButtonClick(bool isfavorite) {
    setState(() {
      _isShowingConfirmation = true;
      _isFavorite = isfavorite;
    });

    Timer(Duration(seconds: 1), () {
      setState(() {
        _isShowingConfirmation = false;
        explorationController.fetchCat();
      });
    });
  }
}
