import 'package:cats/Search/Controllers/search_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreenTopPart extends StatelessWidget {
  final SearchController searchController;
  SearchScreenTopPart({Key? key, required this.searchController})
      : super(key: key);

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
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
                    decoration: InputDecoration(
                      hintText: 'Search for cat breed...',
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.clear();
                            searchController.fetchedCats.clear();
                          },
                          icon: const Icon(Icons.close, color: Colors.grey)),
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
