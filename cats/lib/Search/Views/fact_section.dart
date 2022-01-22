import 'package:cats/Search/Models/cat_detail_view_model.dart';
import 'package:flutter/material.dart';

import 'fact_row.dart';

class FactSection extends StatelessWidget {
  final CatDetailViewModel viewModel;
  const FactSection({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FactRow(fact: "Description", description: viewModel.description()),
        FactRow(fact: "Is from", description: viewModel.origin()),
        FactRow(fact: "Is rare", description: viewModel.isRare()),
        FactRow(fact: "Temperament", description: viewModel.temperament()),
        FactRow(
            fact: "Intelligence level", description: viewModel.intelligence()),
        FactRow(fact: "Is hairless", description: viewModel.isHairless())
      ],
    );
  }
}
