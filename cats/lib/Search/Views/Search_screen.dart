import 'package:cats/Search/Controllers/search_controller.dart';
import 'package:cats/Utils/SharedViews/shared_clip_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController controller;
  final SearchController searchController =
      Get.put(SearchController());


  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  void searchStringChanged(String searchString) {

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const SharedClipPath(),
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                      width: 320,
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length >= 2) {
                           searchController.search(value);
                          }
                        },
                        controller: controller,
                        autofocus: false,
                        autocorrect: true,
                        decoration: const InputDecoration(
                          hintText: 'Search for cat breed...',
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2),
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
