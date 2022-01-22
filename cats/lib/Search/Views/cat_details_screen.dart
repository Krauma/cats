import 'package:cats/Search/Models/cat_search_result.dart';
import 'package:cats/Utils/SharedViews/shared_clip_path.dart';
import 'package:flutter/material.dart';

class CatDetailsScreen extends StatefulWidget {
  final CatSearchResult cat;
  const CatDetailsScreen({ Key? key, required this.cat}) : super(key: key);

  @override
  _CatDetailsScreenState createState() => _CatDetailsScreenState();
}

class _CatDetailsScreenState extends State<CatDetailsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const <Widget>[
          SharedClipPath(),
        ],
      ),
    );
  }
}