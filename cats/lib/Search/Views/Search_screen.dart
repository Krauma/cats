import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 320,
            padding: const EdgeInsets.all(12.0),
            child: const TextField(
              autofocus: false,
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Search for cat breed...',
                prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey,),
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            )),
      ),
    );
  }
}
