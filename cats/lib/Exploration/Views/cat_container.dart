import 'package:cats/Exploration/Controllers/exploration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatContailer extends StatelessWidget {
  final ExplorationController explorationController;
  const CatContailer({Key? key, required this.explorationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 34, 4, 20),
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
    );
  }
}
