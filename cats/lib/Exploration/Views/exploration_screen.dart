import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exploration_clip_path.dart';

class ExplorationScreen extends StatefulWidget {
  const ExplorationScreen({Key? key}) : super(key: key);

  @override
  _ExplorationScreenState createState() => _ExplorationScreenState();
}

class _ExplorationScreenState extends State<ExplorationScreen> {
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
                      color: Colors.blue,
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
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close, color: Colors.red),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          primary: Colors.grey[100],
                          onPrimary: Colors.red,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
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
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
